extends Node2D

@onready var camera = $MainCamera
@onready var man = $Man
@onready var cat = $Cat

func _physics_process(delta):
	if GameManager.target:
		camera.position.x = floor(cat.position.x)
		camera.position.y = floor(cat.position.y)
	elif not GameManager.target:
		camera.position.x = floor(man.position.x)
		camera.position.y = floor(man.position.y)

func _input(event):
	if event.is_action_pressed("character_change"):
		GameManager.target = !GameManager.target
