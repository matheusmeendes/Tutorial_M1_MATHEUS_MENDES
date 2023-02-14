extends Node2D

var lista
var insira1 = []
var texto
var insira3 

func _on_Lista_Preenchida_pressed():
	lista = [0,2,4,6,8,10]
	$Lista_Preenchida.text = "A lista é: " + String(lista)

func _on_Valor_pressed():
	insira3 = str($insira3.text)
	$Valor2.text = "O valor é: " + String(insira3)

func _on_Texto_pressed():
	texto = "Hello world"
	$Texto2.text = "O texto é: " + String(texto)

func _on_Lista_Vzia_pressed():
	insira1.append($insira1.text)
	$Lista_Vazia.text = "A lista é: " +  String(insira1)
