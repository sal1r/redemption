extends Player

func _ready():
	speed = 300

func _physics_process(delta):
	if game.target:
		walk()
		if direction:
			if direction.x:
				anim.play("walk_side")
				anim.flip_h = true if direction.x > 0 else false
			elif direction.y < 0:
				anim.play("walk_back")
			else:
				anim.play("walk_front")
		else:
			anim.play("idle")
		move_and_slide()
	else:
		anim.play("idle")
