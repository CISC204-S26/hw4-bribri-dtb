extends CharacterBody2D

@export var speed := 200.0

func _ready():
	add_to_group("player")

func _physics_process(_delta):
	var dir_x = Input.get_action_strength("move right") - Input.get_action_strength("move left")
	var dir_y = Input.get_action_strength("move down") - Input.get_action_strength("move up")

	var direction = Vector2(dir_x, dir_y).normalized()
	velocity = direction * speed

	if dir_x != 0 and $Sprite2D:
		$Sprite2D.flip_h = dir_x < 0

	move_and_slide()
