extends StaticBody2D

var door_opened: bool = false

func _on_trigger_body_entered(body):
	if body is Player:
		if door_opened: return
		if body.item == GameManager.res.KEY:
			$CollisionShape2D.queue_free()
			$CloseDoor.hide()
			$OpenDoor.show()
			body.item = GameManager.res.NONE
			door_opened = true
