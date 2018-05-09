extends Area2D

var vel=200

func _ready():
	set_process(true)
	pass

func _process(delta):
	set_position(get_position()+Vector2(0,-1)*delta*vel)
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group(game.GRUPO_COLISAO):
		game.score+=1
		if body.has_method("_up"):
			body._up()			
			queue_free()
	pass


