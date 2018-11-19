p = random_prime(2^30)
q = random_prime(2^30)
n = p * q

phi = (p-1) * (q-1)
e = 65537

#Private Key
d = inverse_mod(e,phi)

#P = "ELAINTEXTFORRSA"
#M = [ord(x) for x in P]
#M = ZZ(list(reversed(M)), 100)
M = 123456782468
N = M.nbits()

C = power_mod(M,e,n)

#Attack 1: Simple factorisation
e1 = 65537
n1 = n
L1 = list(factor(n))

phi1 = (L1[0][0]-1)*(L1[1][0]-1)
d1 = inverse_mod(e1,phi1)
P1 = power_mod(C, d1, n1)

#Attack 2: Partial Key
e2 = e
expo = 2 ^ int(N/4)
d0 = d % expo

lhs = e2*d0 - 1

p0 = var('p')
x = var('x')
y = var('y')

#k = 2
for k in range(1,e2):
 if gcd(k,expo) == 1:
  kin = inverse_mod(k,expo)
  s = (n + 1 - kin*lhs)%expo
  solve([p0^2-s*p0==0],p0)
  q0 = (n / p0) % expo
  solve([(expo*x + p0)(expo*y + q0)==n,(expo*(x+y) + p0 + q0 == s],x,y)
  if x == int(x) and y = int(y):
   break
p2 = expo*x + p0
q2 = expo*y + q0
phi2 = (p2 - 1)*(q2 - 1)
d2 = inverse_mod(e2,phi2)
P2 = power_mod(C,d2,n2)
