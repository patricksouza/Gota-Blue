extends Node2D

var vel = 150

func _ready():
	set_process(true)
	pass

func _process(delta):
	set_position(get_position()+Vector2(0,-1)*vel*delta)
	pass



func _on_Moeda_body_entered(body):
	if body.is_in_group(game.GRUPO_COLISAO):
		game.score+=10
		queue_free()
	pass 

