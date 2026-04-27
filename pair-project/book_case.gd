extends Area2D

var triggered := false

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if triggered:
		return
		
	if body.is_in_group("player"):
		triggered = true
		print("Hmm... wonder what they were reading.")
