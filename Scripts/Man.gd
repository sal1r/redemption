extends Player

func _physics_process(delta):
	if not GameManager.target:
		self.walk()
		move_and_slide()
