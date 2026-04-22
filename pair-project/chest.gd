extends Area2D

var opened := false

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if opened:
		return

	if body.is_in_group("player"):
		print("Keys available:", GameState.keys)

		if GameState.keys > 0:
			GameState.keys -= 1
			opened = true
			print("You win!")
		else:
			print("You lose! You need the key.")
