extends KinematicBody2D

const SPEED = 150
const ACCELERATION = 100
const GRAVITY = 20
var look_direction=Vector2(0,1)
var motion = Vector2()
var pre_disparo = preload("res://Cena/disparo_bolha.tscn")
var ultimo_tiro = 0
var intervalo = 0.5
var planar = 0
func _upCloud():
	motion.y=-5
	pass
func _up():
	motion.y=-50
	pass
		

func _movement():
	#var mouse_pos = get_global_mouse_position()
	#var m_pos=mouse_pos.x
	#var m_posY=mouse_pos.y
	
	#var _max=max(-m_pos-ACCELERATION,-SPEED)
	#var _min=min(m_pos+ACCELERATION,SPEED)
	if Input.is_action_pressed("direita"):
		#motion.x= _max
		motion.x = SPEED
	elif Input.is_action_pressed("esquerda"):
		#motion.x= _min
		motion.x = -SPEED
	else: 
		motion.x=0
	move_and_slide(motion)
	
	if Input.is_action_pressed("planar"):
		motion.y =-10
	if Input.is_action_pressed("baixo"):
		motion.y = 10
	move_and_slide(motion,Vector2(0,1))
	pass

func _disparo(delta):
	if ultimo_tiro <=0:
		var disparo = pre_disparo.instance()
		disparo.set_global_position(get_node("disparo_pos").get_global_position())
		get_node("../").add_child(disparo)
		ultimo_tiro = intervalo
	if ultimo_tiro>0:
		ultimo_tiro-=delta
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
	if Input.is_action_pressed("disparo"):
		_disparo(delta)
	pass