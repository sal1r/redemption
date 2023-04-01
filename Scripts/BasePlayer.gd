extends CharacterBody2D
class_name Player

@onready var anim = $Sprite
@onready var game = get_node("/root/Game")

var speed = 500
var direction = Vector2.ZERO

func walk():
	direction = Input.get_vector("left", "right", "up", "down")

	velocity = direction.normalized() * speed
