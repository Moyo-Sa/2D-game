extends CanvasLayer

@onready var win_label: Label = $winLabel

func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	GameManager.reset_score()
	GameManager.reset_health()

func _ready():
	print(GameManager.score) 
	if(GameManager.score < 60):
		win_label.text =  "You only collected " + str(GameManager.score) + "/60 coins!\n"+"\nTry to collect all the coins!"
	else:
		win_label.text = "You collected all 60 coins!!"
	
