extends Player

func _physics_process(delta):
	if !game.target:
		self.walk()
		if self.direction:
			anim.play("Walk")
		else:
			anim.play("idle")
		move_and_slide()
	else:
		anim.play("idle")


func _on_area_1_area_entered(area):
	pass # Replace with function body.
