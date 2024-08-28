extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_reset_player_1_body_entered(body):
	show()


func _on_reset_player_2_body_entered(body):
	show()
