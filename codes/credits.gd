extends Control

func _ready():
	$MimiSlowed.play()

func _on_touch_screen_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
	TransitionScreen.transition()
	await TransitionScreen.on_transition_finished
