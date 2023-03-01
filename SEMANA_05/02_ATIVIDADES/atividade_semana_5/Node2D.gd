extends Node2D

#Variável "teste" deletada
#Variável "valor" deletada
var numero = 0 #Alterado: número não pode ter acento
var lista = [] #Alterado: a lista tem que ser determinada como uma variável
var nome #Variável adicionada 
var cont = 0 #Variável adicionada e determinada aqui
var i = 0 #Variável adicionada 

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Alterado: a variável numero não pode ter acento
								 #Falta um "$" antes do LineEdit
	nome = str($LineEdit2.text) #Ajeitei a ordem, criei um novo LineEdit e defini "nome" como string

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #Alterado: váriavel numero tem que estar em letra minúscula
		lista.append(numero) #Alterado: váriavel numero tem que estar em letra minúscula
	$Label.text = String(lista) #Exibindo a lista ao invés do número

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	i=0 #Coloquei a variável "i" fora do while
	while i <= (len(lista)-1): #Alterei a condição do while
		if(lista[i]%2==1):
			cont+=1
		i=i+1 #Coloquei em loop
		if(cont!=0):
			$Label2.text = String(nome) + " Baldo" #Juntei as duas últimas linhas para ficar mais direto
