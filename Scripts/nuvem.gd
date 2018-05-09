extends Node2D

var vel= 200

func _ready():
	set_process(true)
	#add_to_group(game.GRUPO_COLISAO)
	pass
	
func _process(delta):
	add_to_group(game.GRUPO_COLISAO)
	set_position(get_position()+Vector2(1,0)*vel*delta)
	$sprite.play("move")
	pass


#func _on_nuvem_body_entered(body):
	pass



func _on_nuvem_body_exited(body):
	print(body.get_groups())
	if body.is_in_group(game.GRUPO_COLISAO):
		if body.has_method("_upCloud"):
			body._upCloud()
	pass # replace with function body
