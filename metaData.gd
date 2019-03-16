extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var profile = {}
var profileNames = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _init():
	var nameFile = File.new()
	if nameFile.open("res://saveNames.meta", File.READ) != OK:
		return
	var data_text = nameFile.get_as_text()
	nameFile.close()
	var data_parse = JSON.parse(data_text)
	if data_parse.error != OK:
		return
	profileNames = data_parse.result["names"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
