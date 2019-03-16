extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (int) var speed = 200
var velocity = Vector2()

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var m1 = Singleton.Monster.new("Tyler");
	
	

func get_input():
	velocity = Vector2()

func _process(delta):
	
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass
