extends Node

var pre_fireboy = preload("res://Cena/fireboy.tscn")
var intervalo = 1

func _ready():
	randomize()
	set_process(true)
	pass
	
func _process(delta):
	
	if intervalo>0:
		intervalo-=delta
	else:
		intervalo=rand_range(1 , 3)
		var fireboy = pre_fireboy.instance()
		fireboy.set_position(Vector2(rand_range(300,-450),650))	
		get_owner().add_child(fireboy)
	pass
