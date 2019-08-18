x, y = input("Digite 2 booleanos na mesma linha. Ex: True False\n").split()
if x == "True":
    x = True
elif x == "False":
    x = False
if y == "True":
    y = True
elif y == "False":
    y = False

print((lambda x, y: x != y)(x, y))
