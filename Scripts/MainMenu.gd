extends Control

@onready var play = $Center/Buttons/Play
@onready var authors = $Center/Buttons/Authors
@onready var exit = $Center/Buttons/Exit



func _on_play_pressed():
	GameManager.load_game()


func _on_authors_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	GameManager.exit()
