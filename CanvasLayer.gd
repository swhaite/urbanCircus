extends CanvasLayer

signal newGame

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_newGameButton_pressed():
	get_tree().change_scene("res://profileCreate.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_loadGameButton_pressed():
	get_tree().change_scene("res://profileLoad.tscn")
