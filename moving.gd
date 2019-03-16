extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (int) var speed = 200
var velocity = Vector2()

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
	if Input.is_action_pressed('left'):
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _process(delta):
	get_input()
	move_and_slide(velocity)
