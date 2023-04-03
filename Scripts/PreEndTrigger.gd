extends Node2D

@onready var background = get_node("/root/Game/Background/Parallax")
@onready var particles = get_node("/root/Game/MainCamera/Particles")
var transition = false
var transition_stage = 1

func _on_trigger_body_entered(body):
	if body is Player:
		transition = true
		GameManager.stop_music()

func _physics_process(delta):
	if transition:
		transition_stage -= 0.02
		background.modulate.a = transition_stage
		particles.modulate.a = transition_stage
		if transition_stage <= 0:
			transition = false
