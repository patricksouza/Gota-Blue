extends Node

var pre_nuvem=preload("res://Cena/nuvem.tscn")
var intervalo=0

func _ready():
	set_process(true)
	randomize()
	pass
	
func _process(delta):
	if intervalo>0:
		intervalo-=delta
	else:
		intervalo=rand_range(1,5)
		var nuvem=pre_nuvem.instance()
		nuvem.set_position(Vector2(rand_range(-50,20),rand_range(-40,400)))
		get_owner().add_child(nuvem)
	pass

