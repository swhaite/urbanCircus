extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_createButton_pressed():
	metaData.profile = {"name" : $playerName.text, "items" : {}, "monsters" : {}}
	var s = JSON.print(metaData.profile)
	var file = File.new()
	var dir = Directory.new()
	dir.open("user://")
	dir.make_dir("gameSaves")
	if file.open("user://gameSaves/"+ $playerName.text +".sav", File.WRITE) != 0:
		print("Error opening file")
		return
	file.store_line(s)
	file.close()
	get_tree().change_scene("res://main.tscn")
