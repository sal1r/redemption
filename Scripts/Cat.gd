extends Player

func _physics_process(delta):
	if game.target:
		walk()
		if direction:
			anim.flip_h = true if direction.x > 0 else false
		else:
			anim.play("idle")
		move_and_slide()
	else:
		anim.play("idle")
