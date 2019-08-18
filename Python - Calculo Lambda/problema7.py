n = int(input("Digite o valor máximo da lista iniciada em 1: "))
verificador = (list(map(lambda x: str(x)+": Par" if x%2 == 0 else str(x)+": Ímpar", range(1,n+1))))
print(verificador)