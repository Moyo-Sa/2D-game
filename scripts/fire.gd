extends Area2D

@onready var fire: AnimatedSprite2D = $AnimatedSprite2D
@onready var killzone: Area2D = $Killzone
@onready var killzone_collision: CollisionShape2D = $Killzone/CollisionShape2D


var stove_on = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		fire.play('on')
	call_deferred("turn_on") 

#func _on_animated_sprite_2d_ready() -> void:
	#print("Killzone node is: ", killzone) 
	#killzone.disable_mode = CollisionObject2D.DISABLE_MODE_MAKE_STATIC


func turn_on():
	if not stove_on:
		killzone_collision.disabled = false
		stove_on = true

func turn_off():
	if stove_on:
		killzone_collision.disabled = true
		stove_on = false

func _ready() -> void:
	killzone_collision.disabled = true
	fire.play('off')
	killzone.disable_mode = CollisionObject2D.DISABLE_MODE_MAKE_STATIC
