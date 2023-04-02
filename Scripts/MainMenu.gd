extends Control

@onready var transition_rect = $TransitionsRect
@onready var authors = $Authors
@onready var controls = $Controls
var transition = false
var transition_stage = 0

func _physics_process(delta):
	if transition:
		transition_stage += 0.02
		transition_rect.color.a = transition_stage
		if transition_stage >= 1.5:
			GameManager.load_game()

func _on_play_pressed():
	transition = true
	transition_rect.visible = true

func _on_authors_pressed():
	authors.visible = true

func _on_exit_pressed():
	GameManager.exit()


func _on_controls_pressed():
		controls.visible = true

func _input(event):
	if event.is_action_pressed("enter"):
		authors.visible = false
		controls.visible = false
