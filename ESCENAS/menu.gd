extends Control
func _ready():
	$VBoxContainer/STARTButton.grab_focus()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_quit_button_2_pressed() -> void:
	get_tree().quit()
