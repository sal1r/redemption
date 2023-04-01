extends CharacterBody2D
class_name Player

var speed = 500
var direction = Vector2.ZERO

func walk():
	direction = Input.get_vector("left", "right", "up", "down")

	velocity = direction.normalized() * speed

	if direction:
		pass # walk
		
func _input(event):
	if event.is_action_pressed("character_change"):
		if GameManager.target:
			GameManager.target = false
		elif not GameManager.target:
			GameManager.target = true
