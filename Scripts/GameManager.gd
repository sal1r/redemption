extends Node

# Сделать табличку "Вы точно хоитите выйти"
# через set_auto_accept_quit() и ловлю событий

func load_game(): # Переписать на загрузку в фоне при запуске игры,
#                    юзать change_scene_to_packed()
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func exit():
	get_tree().quit()
