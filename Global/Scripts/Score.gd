extends CanvasLayer

func _on_point_player_1_area_body_entered(body):
	if body.name == "Ball":
		Game.Player_1_Score += 1


func _on_point_player_2_area_body_entered(body):
	if body.name == "Ball":
		Game.Player_2_Score += 1


