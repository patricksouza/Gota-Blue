extends Node

const GRUPO_DANO = "damage"
const GRUPO_COLISAO= "COLIDIDO"
var score =0 setget setScore, getScore #Encapsulamento
signal score_up
#var storeScore setget setStore, getStore
var life = 3  setget setLife 
signal life_down
func _ready():
	
	pass

func setScore(valor):
	if valor>0:
		score = valor
		emit_signal("score_up")
	pass

func getScore():
	return score
	pass
	
func setLife(valor):
	life=valor
	emit_signal("life_down")
	pass
func zerarScore(valor):
	score=valor
	emit_signal("score_up")
	pass
