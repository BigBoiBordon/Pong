extends Node2D

var Player_1_Score = 0
var Player_2_Score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Player_1_Score = $"Point Player 1/Player 1 Score"
	Player_2_Score = $"Point Player 2/Player 2 Score"


func _on_point_player_1_body_entered(body):
	if body.name == "Ball":
		Player_1_Score += 1


func _on_point_player_2_body_entered(body):
	if body.name == "Ball":
		Player_2_Score +=  1
