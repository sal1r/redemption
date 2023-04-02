extends Control

@onready var pause_menu = $Pause
@onready var dialog = $Center/Dialog
@onready var dialog_text = $Center/Dialog/Text
@onready var start_dialog = $StartDialog
@onready var start_dialog_text = $StartDialog/Center/Text
@onready var item = $Item
var transition = true
var transition_stage = 0
var fade = false
var fade_stage = 1

func show_dialog(text):
	dialog.visible = true
	dialog_text.text = text

func hide_dialog():
	dialog.visible = false
	dialog_text.text = ""

func _on_continue_pressed():
	pause_menu.visible = false
	get_tree().paused = false

func _physics_process(delta):
	if transition:
		transition_stage += 0.02
		start_dialog_text.modulate.a = transition_stage
		if transition_stage >= 1:
			transition = false
			
	if fade:
		fade_stage -= 0.02
		start_dialog.modulate.a = fade_stage
		if fade_stage <= 0:
			fade = false
			start_dialog.visible

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().paused = true
		pause_menu.visible = true
	
	if event.is_action_pressed("enter"):
		fade = true

func _on_menu_pressed():
	get_tree().paused = false
	GameManager.load_menu()

func _on_exit_pressed():
	GameManager.exit()
