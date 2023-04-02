extends Node2D

@onready var camera = $MainCamera
@onready var man = $Man
@onready var cat = $Cat
var target = false

func _ready():
	GameManager.play_music()

func _physics_process(delta):
	if !target:
		camera.position.x = man.position.x
		camera.position.y = man.position.y
	elif target:
		camera.position.x = cat.position.x
		camera.position.y = cat.position.y

func _input(event):
	if event.is_action_pressed("character_change"):
		target = !target
