extends CharacterBody2D #KinematicBody2D for Godot 3

#for Godot 3, add the following line:
#var velocity
var collision_data

func _ready(): # function for on start of game
	velocity = Vector2(300,500) # start the balls movement right 300 speed, and down 500 speed

func _physics_process(delta):
	collision_data = move_and_collide(velocity * delta)
	if collision_data:
		velocity.y += randf_range(-20, 20) #rand_range(-20, 20) for Godot 3
		velocity = velocity.bounce(collision_data.get_normal())


func _on_point_player_1_body_entered(_body):
	print("Point Player 1")


func _on_point_player_2_body_entered(_body):
	print("Point Player 2")
