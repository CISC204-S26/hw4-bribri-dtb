extends Area2D

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.is_in_group("player"):
		GameState.fish += 1
		print("Picked up a fish. Total fish:", GameState.fish)
		queue_free()
