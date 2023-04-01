extends Node2D

@onready var camera = $MainCamera

func _input(event):
	if event.is_action_pressed("character_change"):
		GameManager.target = !GameManager.target
