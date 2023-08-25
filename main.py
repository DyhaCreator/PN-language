f1 = open('code.PN','r')
f2 = open('text.txt','r')
code = f1.readline()
text = f2.readlines()
index = 0

for i in range(len(code)):
    if(code[i] == 'P'):
        print(text[index])
    elif(code[i] == 'N'):
        index+=1