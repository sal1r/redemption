extends Player

func _ready():
	speed = 250

func _physics_process(delta):
	if !game.target:
		walk()
		if direction:
			anim.play("Walk")
			anim.flip_h = true if direction.x < 0 else false
		else:
			anim.play("idle")
		move_and_slide()
	else:
		anim.play("idle")


func _on_area_1_area_entered(area):
	pass # Replace with function body.
