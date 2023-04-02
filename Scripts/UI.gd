extends Control

@onready var pause_menu = $Pause
@onready var dialog = $Center/Dialog
@onready var dialog_text = $Center/Dialog/Text

func show_dialog(text):
	dialog.visible = true
	dialog_text = text

func hide_dialog():
	dialog.visible = false
	dialog_text = ""

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
