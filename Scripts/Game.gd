extends Node2D

enum {NONE, KEY, COIN}

@onready var camera = $MainCamera
@onready var man = $PlayersSort/Man
@onready var cat = $PlayersSort/Cat
@onready var dialog = $CanvasLayer/TextureRect
var transition_stage = 0
var transition = false
var target = false

func _process(delta):
	if transition:
		transition_stage += 0.02
		dialog.modulate.a = transition_stage

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
		
	if event.is_action_pressed("enter"):
		if !transition:
			transition == true
