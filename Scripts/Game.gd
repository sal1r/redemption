extends Node2D

@onready var camera = $MainCamera
@onready var man = $Man
@onready var cat = $Cat

func _physics_process(delta):
	if GameManager.target:
		camera.position.x = cat.position.x
		camera.position.y = cat.position.y
	elif not GameManager.target:
		camera.position.x = man.position.x
		camera.position.y = man.position.y

func _input(event):
	if event.is_action_pressed("character_change"):
		GameManager.target = !GameManager.target
