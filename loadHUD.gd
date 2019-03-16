extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	print('got here 2')
	for name in metaData.profileNames:
		$nameList.add_item(name)
		
	print('got here 3')
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if $nameList.get_selected_items().size() == 0:
		$loadErrorLabel.visible = true
		return
	var id = $nameList.get_selected_items()[0]
	name = $nameList.get_item_text(id)
	var file = File.new()
	if file.open("user://gameSaves/"+name +".sav", File.READ) != 0:
    	print("Error opening file")
    	return
	metaData.profile=JSON.parse(file.get_as_text()).result
	file.close()
	get_tree().change_scene("res://main.tscn")
	
