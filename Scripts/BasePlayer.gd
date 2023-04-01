extends CharacterBody2D
class_name Player

var speed = 500
var dir = Vector2.ZERO

func walk():
	if Input.is_action_just_pressed("left"):
		dir.x = -1
	if Input.is_action_just_pressed("right"):
		dir.x = 1
	if Input.is_action_just_pressed("up"):
		dir.y = -1
	if Input.is_action_just_pressed("down"):
		dir.y = 1
	
	if !(Input.is_action_pressed("left")) and !(Input.is_action_pressed("right")):
		dir.x = 0
	
	if !(Input.is_action_pressed("up")) and !(Input.is_action_pressed("down")):
		dir.y = 0
	
	velocity = dir.normalized() * speed

func _physics_process(delta):
	walk()
