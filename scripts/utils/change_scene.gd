extends Area2D

@export var next_scene_path: String
@export var player_position_x: int
@export var player_position_y: int

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		Global.positions = {"x": player_position_x, "y": player_position_y}
		get_tree().call_deferred("change_scene_to_file", next_scene_path)
