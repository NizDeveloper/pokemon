extends CharacterBody2D

var speed = 150
var run_speed = 2
var run   = false

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if run == false:
		velocity = direction * speed
	else:
		velocity = (direction * speed) * run_speed
	
	
	move_and_slide()
	handle_dash()

func handle_dash() -> void:
	if Input.is_action_just_pressed("ui_x"):
		run = true
	elif Input.is_action_just_released("ui_x"):
		run = false
