#Vigenere Cryptosystem
A = AlphabeticStrings()
V = VigenereCryptosystem(A,5)

K = A('LEMON')
e = V(K)

C = e(A('PLAINTEXTFORVIGENERE'))
#print(C)


#Attack 1: Dictionary attack
with open('Dict.txt', 'r') as f:
 l = f.readlines()

L = [i.strip() for i in l]
#for i in range(0,len(L)):
# L[i] = A(L[i])
 
Cip = str(C)
strr = ""

#for i in range(0,len(L)):
for i in range(0,2):
 for j in range(0,len(C)):
  lenL=len(L[i])
  order = (ord(Cip[j]) - ord(L[i][j%lenL]) + 26)%26 + ord('A')
  strr = strr + chr(order)
  if(j == len(C)-1):
   #print(strr)
   strr = ""
   
#Attack 2: Kasinski Attack   

#V2 = VigenereCryptosystem(A,5)
#K2 = A('ORIBP')
#e2 = V2(K)

#brutus = 'BEPATIENTTILLTHELASTROMANSCOUNTRYMENANDLOVERSHEARMEFORMYCAUSEANDBESILENTTHATYOUMAYHEARBELIEVEMEFORMINEHONOURANDHAVERESPECTTOMINEHONOURTHATYOUMAYBELIEVECENSUREMEINYOURWISDOMANDAWAKEYOURSENSESTHATYOUMAYTHEBETTERJUDGEIFTHEREBEANYINTHISASSEMBLYANYDEARFRIENDOFCAESARSTOHIMISAYTHATBRUTUSLOVETOCAESARWASNOLESSTHANHISIFTHENTHATFRIENDDEMANDWHYBRUTUSROSEAGAINSTCAESARTHISISMYANSWERNOTTHATILOVEDCAESARLESSBUTTHATILOVEDROMEMOREHADYOURATHERCAESARWERELIVINGANDDIEALLSLAVESTHANTHATCAESARWEREDEADTOLIVEALLFREEMENASCAESARLOVEDMEIWEEPFORHIMASHEWASFORTUNATEIREJOICEATITASHEWASVALIANTIHONOURHIMBUTASHEWASAMBITIOUSISLEWHIMTHEREISTEARSFORHISLOVEJOYFORHISFORTUNEHONOURFORHISVALOURANDDEATHFORHISAMBITIONWHOISHERESOBASETHATWOULDBEABONDMANIFANYSPEAKFORHIMHAVEIOFFENDEDWHOISHERESORUDETHATWOULDNOTBEAROMANIFANYSPEAKFORHIMHAVEIOFFENDEDWHOISHERESOVILETHATWILLNOTLOVEHISCOUNTRYIFANYSPEAKFORHIMHAVEIOFFENDEDIPAUSEFORAREPLYTHENNONEHAVEIOFFENDEDIHAVEDONENOMORETOCAESARTHANYOUSHALLDOTOBRUTUSTHEQUESTIONOFHISDEATHISENROLLEDINTHECAPITOLHISGLORYNOTEXTENUATEDWHEREINHEWASWORTHYNORHISOFFENCESENFORCEDFORWHICHHESUFFEREDDEATHHERECOMESHISBODYMOURNEDBYMARKANTONYWHOTHOUGHHEHADNOHANDINHISDEATHSHALLRECEIVETHEBENEFITOFHISDYINGAPLACEINTHECOMMONWEALTHASWHICHOFYOUSHALLNOTWITHTHISIDEPARTTHATASISLEWMYBESTLOVERFORTHEGOODOFROMEIHAVETHESAMEDAGGERFORMYSELFWHENITSHALLPLEASEMYCOUNTRYTONEEDMYDEATH'

#brutus = 'THETHETHETHETH'

#brutus = 'APPLEAPPLEAPPLEAPPLE'

#C2 = e2(A(brutus))

#freq = []
#count = 0
#i = 0
#while i < len(C2):
# spc = C2[i:i+3]
 #print(spc)
# lnt = len(spc)
# if lnt == 3:
#  for j in range(i+1, len(C2)):
#   if C2[i:i+lnt] == C2[j:j+lnt]:
#    while C2[i:i+lnt] == C2[j:j+lnt]:
#     lnt = lnt + 1
#    lnt = lnt - 1
#    spc = C2[i: i + lnt]
#    diff = j - i
#    freq.append(list(factor(diff)))
#    count += 1
#    j += lnt + 1
#  i += lnt - 3 + 1  
# else:
#  i += 1

#d = {}  
#for t in freq:
# if d.has_key(t[0]):
#  d[t] += 1
# else:
#  d[t] = 1
#sorted(d.items(), key = lambda x: x[1], reverse = True)   
   
