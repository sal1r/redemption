extends Node2D


func _on_trigger_body_entered(body):
	if body is Player:
		get_node("/root/Game/Background").visible = false
		get_node("/root/Game/MainCamera/Particles").visible = false
		GameManager.stop_music()
