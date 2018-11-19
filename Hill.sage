S = AlphabeticStrings()
H = HillCryptosystem(S, 2)

R = IntegerModRing(26)
M = MatrixSpace(R,2,2)

A = M([[7,11],[8,11]])
#A = M([[1,10,0],[0,20,1],[2,15,2]])
#A = M([[6,24,1],[13,16,10],[20,17,15]])
#A = transpose(A)
e = H(A)

C = e(S("SHORTEXAMPLE"))
#C = e(S("RETREATNOWXX"))
#C = e(S('ACT'))

P = H.deciphering(A, C)

#Attack: Known Plaintext


