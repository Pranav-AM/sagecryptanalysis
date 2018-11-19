#Affinecryptosystem
A = AffineCryptosystem(AlphabeticStrings())
P = A.encoding("PlaintextforAffineCipher")

#Generate Z(26)*
L = []
for i in range(1,26):
 if gcd(i,26) == 1:
  L.append(i)

index = ZZ.random_element(0,len(L))
a = L[index]
b = ZZ.random_element(0,25)
C = A.enciphering(a, b, P)

#print(A.deciphering(a,b,C))

#Brute Force Attack
for i in range(1,26):
 for j in range(0,len(L)):
  print("Keys = " + str(L[j]) + "," + str(i))
  print(A.deciphering(L[j],i,C))
  
print("Actual keys = " + str(a) + "," + str(b))  
