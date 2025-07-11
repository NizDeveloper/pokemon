extends Node2D

@onready var player = $"player"

func _ready() -> void:
	player.position.x = Global.positions["x"]
	player.position.y = Global.positions["y"]
