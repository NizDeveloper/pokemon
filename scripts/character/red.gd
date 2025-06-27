extends CharacterBody2D

var speed := 300
var dash_speed := 600
var is_dashing := false

func _physics_process(delta: float) -> void:
	handle_movement()
	handle_dash()

func handle_movement() -> void:
	var direction := Vector2.ZERO
	if Input.is_action_pressed("ui_d"):
		direction.x += 1
	if Input.is_action_pressed("ui_a"):
		direction.x -= 1
	if Input.is_action_pressed("ui_s"):
		direction.y += 1
	if Input.is_action_pressed("ui_w"):
		direction.y -= 1
	velocity = direction.normalized()

func handle_dash() -> void:
	if Input.is_action_just_pressed("ui_shift"):
		is_dashing = true
	elif Input.is_action_just_released("ui_shift"):
		is_dashing = false
