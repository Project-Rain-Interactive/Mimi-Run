extends Node


const SAVE = "user://savefile.save"
var highest_record
# Called when the node enters the scene tree for the first time.
func save_score():
	var file = FileAccess.open(SAVE, FileAccess.WRITE_READ)
	file.store_32(highest_record)

func load_score():
	var file = FileAccess.open(SAVE, FileAccess.READ)
	if FileAccess.file_exists(SAVE):
		highest_record = file.get_32()
