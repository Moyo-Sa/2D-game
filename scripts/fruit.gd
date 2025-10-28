extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	print("fruit passed")
	animation_player.play("healthUp") # play sound
	GameManager.set_health(100) #update health
