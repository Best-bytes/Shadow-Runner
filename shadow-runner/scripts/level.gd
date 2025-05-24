extends Control


		
	

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level.tscn")  

func _on_level_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
