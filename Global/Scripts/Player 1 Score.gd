extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(Game.Player_1_Score)



func _on_point_player_1_body_entered(body):
	if body.name == "Ball":
		Game.Player_1_Score += 1

