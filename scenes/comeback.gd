extends Button

func _ready() -> void:
	$AnimationPlayer.play("fade_out")

func _on_pressed() -> void:
	get_tree().quit()
	grab_focus()
