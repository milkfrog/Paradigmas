a,b,c = map(float, input("Digite 3 valores na mesma linha. Ex: 2 3.65 82\n").split())
maior = lambda a,b,c: a if (a >= b and a >= c) else b if (b >= c and b >= a) else c
print(maior(a,b,c))