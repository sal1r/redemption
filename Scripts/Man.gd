extends Player

func _physics_process(delta):
	if game.target:
		self.walk()
		move_and_slide()
