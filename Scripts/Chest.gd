extends StaticBody2D

@onready var UI = get_node("/root/Game/Canvas/UI")
@export var item = GameManager.res.NONE
var player = null

func _on_trigger_body_entered(body):
	if body is Player:
		player = body
		
		match item:
			GameManager.res.NONE:
				UI.show_dialog("Сундук пуст.")
			GameManager.res.KEY:
				UI.show_dialog("Сундук с ключом. Нажмите R, чтобы взять.")
		return
	else:
		player = null


func _on_trigger_body_exited(body):
	player = null
	UI.hide_dialog()

func _input(event):
	if event.is_action_pressed("take"):
		if item == GameManager.res.NONE:
			UI.hide_dialog()
			return
		
		if player:
			if player.item != GameManager.res.NONE:
				UI.hide_dialog()
				return
			
			player.set_item(item)
			item = GameManager.res.NONE
			UI.hide_dialog()
