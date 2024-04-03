extends CharacterBody2D


var speed = 400
var current_direction = "none"

func _physics_process(delta):
	player_movement(delta)

func player_movement(_delta):
	
	if Input.is_action_pressed("ui_up"):
		current_direction = "up"
		velocity.y = -speed
	elif Input.is_action_pressed("ui_down"):
		current_direction = "down"
		velocity.y = speed
	else:
		velocity.y = 0
	
	move_and_slide()
