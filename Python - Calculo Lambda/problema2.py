x1, x2, x3 = map(float, input("Digite as 3 notas na mesma lina. Ex: 5.0 5.5 8.5\n").split())
media = (lambda x1,x2,x3: "Aprovado" if ((x1+x2+x3)/3 >= 6) else "Reprovado")
print(media(x1,x2,x3))
