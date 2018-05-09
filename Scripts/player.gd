extends KinematicBody2D

const SPEED = 250
const ACCELERATION = 100
const GRAVITY = 20
var look_direction=Vector2(0,1)
var motion = Vector2()


func _upCloud():
	motion.y=-5
	pass
func _up():
	motion.y=-10
	pass
		


func _movement():
	var mouse_pos = get_global_mouse_position()
	var m_pos=mouse_pos.x
	var m_posY=mouse_pos.y
	if Input.is_action_pressed("left_click"):
		motion.x= max(-m_pos-ACCELERATION,-SPEED)
	elif Input.is_action_pressed("right_click"):
		motion.x= min(m_pos+ACCELERATION,SPEED)
	else: 
		motion.x=0
	move_and_slide(motion)
	pass
	
func _animation(status):
	$Sprite.play(status)
	pass
	

func _physics_process(delta):
	motion.y+=delta*GRAVITY/5
	add_to_group(game.GRUPO_COLISAO)
	_animation("Falling")
	_movement()
	if game.life ==0:
		get_tree().change_scene("res://Cena/Game_over.tscn")
	pass
	