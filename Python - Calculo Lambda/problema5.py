x1, y1, z1 = map(float, input("Digite as coordenadas x1, y1 e z1 na mesma linha. Ex: 5 6.3 7.2\n").split())
x2, y2, z2 = map(float, input("Digite as coordenadas x2, y2 e z2 na mesma linha. Ex: 3 2.3 5.2\n").split())
dist = lambda x1,x2,y1,y2,z1,z2: "x = "+str(x1 - x2)+", y = "+str(y1 - y2)+", z = "+str(z1 - z2)
print(dist(x1,x2,y1,y2,z1,z2))