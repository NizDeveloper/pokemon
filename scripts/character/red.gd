extends CharacterBody2D

var speed          = 150
var run_multiplier = 2
var run = false

func _ready() -> void:
	add_to_group("Player")

func _physics_process(_delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed * (run_multiplier if run else 1.0)
	move_and_slide()
	handle_dash()

func handle_dash() -> void:
	if Input.is_action_just_pressed("ui_x"):
		run = true
	elif Input.is_action_just_released("ui_z"):
		run = false