extends CharacterBody2D
class_name Player

@onready var anim = $Sprite
@onready var game = get_node("/root/Game")
@onready var items = get_node("/root/Game/Canvas/UI/Items")
@onready var item = GameManager.res.NONE
var speed = 500
var direction = Vector2.ZERO

func walk():
	direction = Input.get_vector("left", "right", "up", "down")

	velocity = direction.normalized() * speed

func set_item(i):
	item = i
	match item:
		GameManager.res.KEY:
			items.text = "Интвентарь: ключ"
		GameManager.res.COIN:
			items.text = "Интвентарь: монета"
		GameManager.res.NONE:
			print("пуст")
			items.text = "Интвентарь пуст"
