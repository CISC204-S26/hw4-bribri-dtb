extends CharacterBody2D

@export var speed := 200.0
@export var jump_velocity := -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	add_to_group("player")  # for coins and DeathZone detection

func _physics_process(delta):
	var dir = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	velocity.x = dir * speed

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	if not is_on_floor():
		velocity.y += gravity * delta
		

	move_and_slide()

	if dir != 0 and $Sprite2D:
		$Sprite2D.flip_h = dir <extends CharacterBody2D
