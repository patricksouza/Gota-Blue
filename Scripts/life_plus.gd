extends Area2D

var vel = 200

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	set_position(get_position()+Vector2(0,-1)*vel*delta)
	pass


func _on_life_plus_body_entered(body):
	if body.is_in_group(game.GRUPO_COLISAO):
		if game.life<5:
			game.life+=1
		else:
			game.setLife(3)
		queue_free()
	pass 
