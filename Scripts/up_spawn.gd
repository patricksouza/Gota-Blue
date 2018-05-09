extends Node


var intervalo=3
var pre_up = preload("res://Cena/up_powerup.tscn")

func _ready():
	randomize()
	set_process(true)
	pass
	
func _process(delta):
	if intervalo>0:
		intervalo-=delta
	else:
		intervalo=rand_range(1,5)
		var up= pre_up.instance()
		up.set_position(Vector2(rand_range(300,-300),650))
		get_owner().add_child(up)
	pass
