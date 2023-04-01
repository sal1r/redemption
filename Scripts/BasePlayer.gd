extends CharacterBody2D
class_name Player

var speed = 500
var direction = Vector2.ZERO

func walk():
	direction = Input.get_vector("left", "right", "up", "down")

	velocity = direction.normalized() * speed

	if direction:
		pass # walk

func _physics_process(delta):
	walk()
