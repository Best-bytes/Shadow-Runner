extends Button


# Called when the node enters the scene tree for the first time.
func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level.tscn")

	

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level.tscn")


func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/control.tscn")


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level.tscn")
	
	
