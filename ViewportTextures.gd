extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Screen3d.texture = $"3dVP".get_texture()
	$Screen2d.texture = $"2dVP".get_texture()
	
