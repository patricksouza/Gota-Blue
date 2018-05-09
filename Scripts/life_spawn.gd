extends Node

var intervalo= 5
var pre_life=preload("res://Cena/life_plus.tscn")

func _ready():
	randomize()
	set_process(true)
	pass
	
func _process(delta):
	if intervalo>0:
		intervalo-=delta
	else:
		intervalo= rand_range(5,10)
		var life = pre_life.instance()
		life.set_position(Vector2(rand_range(300,-450),650))	
		get_owner().add_child(life)
	pass
