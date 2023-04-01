extends Node

var target: bool = false

func _input(event):
	if event.is_action_pressed("character_change"):
		GameManager.target = !GameManager.target
