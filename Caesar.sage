#Caesar Cipher
S = ShiftCryptosystem(AlphabeticStrings())
P = S.encoding("PlaintextforCaesarCipher")
K = ZZ.random_element(0,25)
print("K = " + str(K))

C = S.enciphering(K, P)
#S.deciphering(K, C)
#print(S.deciphering(K, C) == P)

#Brute Force Attack
for i in range(1,26):
 print("Key = " + str(i))
 print(S.deciphering(i,C))
