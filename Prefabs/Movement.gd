extends CharacterBody3D

@export var movespeed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	#print(velocity)
	if Input.get_action_strength("ui_left"):
		velocity = Vector3(-movespeed,0,0)
	elif Input.get_action_strength("ui_right"):
		velocity = Vector3(movespeed,0,0)
	else:
		velocity = Vector3.ZERO
	move_and_slide()
