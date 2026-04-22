extends Area2D

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.is_in_group("player"):
		GameState.keys += 1
		print("Picked up a key. Total keys:", GameState.keys)
		queue_free()
