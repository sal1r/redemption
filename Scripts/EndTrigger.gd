extends Area2D

@onready var UI = get_node("/root/Game/Canvas/UI")

func _physics_process(delta):
	if has_overlapping_bodies():
		print("end")
		UI.end_dialog.visible = true
		UI.end_transition = true
		GameManager.stop_music()
