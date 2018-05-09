extends Node

#pre carregar cena na memoria
var pre_moeda = preload("res://Cena/Moeda.tscn") 
var intervalo= 2

func _ready():
	randomize()
	set_process(true)
	pass
	
func _process(delta):
	#Se o intervalo foi maior que 0
	# subtraia até que fique menor que 0
	if intervalo>0:
		intervalo-=delta
	else:
		intervalo = rand_range(0.3,2)
		var moeda = pre_moeda.instance()
		moeda.set_position(Vector2(rand_range(300,-250),450))
		get_owner().add_child(moeda)
	pass
