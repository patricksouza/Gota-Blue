extends Area2D

var vel= 200

func _ready():
	set_process(true)
	add_to_group(game.GRUPO_DANO)
	pass

func _process(delta):
	set_position(get_position()+Vector2(0,1)*vel*delta)
	pass

func _on_disparo_bolha_area_entered(area):
	if area.is_in_group(game.GRUPO_DANO):
		if area.has_method("destroi"):
			area.destroi()
			game.score+=5
	pass # replace with function body
