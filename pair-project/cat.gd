extends Area2D

var fed := false

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if fed:
		return

	if body.is_in_group("player"):
		print("Fish available:", GameState.fish)

		if GameState.fish > 0:
			GameState.fish -= 1
			fed = true
			print("The cat is happy! 🐱")
		else:
			print("The cat is mad! 😾 You need a fish.")
