extends Node2D

@onready var camera = $MainCamera
@onready var man = $Man
@onready var cat = $Cat
@onready var item_image = $Canvas/UI/Item
const key = preload("res://Sprites/Key.png")
const coin = preload("res://Sprites/Chest.png")
var target = false

func _ready():
	GameManager.play_music()

func _physics_process(delta):
	var player
	if !target:
		camera.position.x = man.position.x
		camera.position.y = man.position.y
		player = man
	else:
		camera.position.x = cat.position.x
		camera.position.y = cat.position.y
		player = cat
		
	match player.item:
		GameManager.res.KEY:
			item_image.texture = key
		GameManager.res.COIN:
			item_image.texture = coin
		GameManager.res.NONE:
			item_image.texture = null

func _input(event):
	if event.is_action_pressed("character_change"):
		target = !target
