extends CharacterBody2D

@export var speed := 200.0
@export var jump_velocity := -400.0


func _ready():
	add_to_group("player")  # for coins and DeathZone detection

func _physics_process(delta):
	var dir = Input.get_action_strength("move right") - Input.get_action_strength("move left")
	velocity.x = dir * speed

	if Input.is_action_just_pressed("move up") and is_on_floor():
		velocity.y = jump_velocity



		

	move_and_slide()

	if dir != 0 and $Sprite2D:
		$Sprite2D.flip_h = dir < 0
