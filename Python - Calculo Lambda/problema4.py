import math
a, b, c = map(float, input("digite os coeficiente a, b e c (nessa ordem e na mesma linha). Ex: 4 5 1\n").split())
result = lambda a,b,c: "x1 = "+str((-b + math.sqrt(b*b - 4*a*c))/2*a)+"\nx2 = "+str((-b - math.sqrt(b*b - 4*a*c))/2*a) if (b*b - 4*a*c) >= 0 else "Número Complexo"
print(result(a,b,c))