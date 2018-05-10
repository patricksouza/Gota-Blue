extends Area2D

var vel= 200
func _ready():
	set_process(true)
	add_to_group(game.GRUPO_DANO)
	pass
	
	
func _process(delta):
	$sprite.play("burning")
	set_position(get_position()+Vector2(0,-1)*vel*delta)
	pass

func destroi():
	queue_free()
	pass
func _on_fireboy_body_entered(body):
	if body.is_in_group(game.GRUPO_COLISAO):
		game.life-=1
		game.score-=5
	pass 
	

