extends CharacterBody2D #KinematicBody2D for Godot 3

#for Godot 3, add the following line:
#var velocity
var collision_data

func _ready(): # function for on start of game
	velocity = Vector2(randf_range(-500,-200),randf_range(-150, 150)) #randomized velocity on start

func _physics_process(delta):
	collision_data = move_and_collide(velocity * delta)
	if collision_data:
		velocity.y += randf_range(-20, 20) #rand_range(-20, 20) for Godot 3
		velocity = velocity.bounce(collision_data.get_normal())


func _on_retry_pressed():
	get_tree().reload_current_scene()
