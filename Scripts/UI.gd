extends Control

@onready var pause_menu = $Pause

func _on_continue_pressed():
	pause_menu.visible = false
	get_tree().paused = false

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().paused = true
		pause_menu.visible = true

func _on_menu_pressed():
	get_tree().paused = false
	GameManager.load_menu()

func _on_exit_pressed():
	GameManager.exit()
