extends Area2D

@export var target_scene_path: String = "res://level_1.tscn"

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("Player entered portal! Loading level 1...")
		get_tree().change_scene_to_file(target_scene_path)
