extends Control

@onready var transition_rect = $TransitionsRect
var transition = false
var transition_stage = 0

func _physics_process(delta):
	if transition:
		transition_stage += 0.02
		transition_rect.color.a = transition_stage
		if transition_stage >= 1:
			GameManager.load_game()

func _on_play_pressed():
	transition = true
	transition_rect.visible = true

func _on_authors_pressed():
	pass # Replace with function body.

func _on_exit_pressed():
	GameManager.exit()


func _on_play_mouse_entered():
	$Buttons/Play.modulate.a = 0.5
	
func _on_play_mouse_exited():
	$Buttons/Play.modulate.a = 1

func _on_authors_mouse_entered():
	$Buttons/Authors.modulate.a = 0.5
	
func _on_authors_mouse_exited():
	$Buttons/Authors.modulate.a = 1

func _on_exit_mouse_entered():
	$Buttons/Exit.modulate.a = 0.5

func _on_exit_mouse_exited():
	$Buttons/Exit.modulate.a = 1
