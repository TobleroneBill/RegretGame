extends Node3D

var Bottom = false
var Top = false

@export var Positions: Array[Vector3]

# Called when the node enters the scene tree for the first time.
func _ready():
	for pos in Positions:
		print(pos)

func Up():
	print('player pressed up')
	$"../../Player".global_position = $Upstairs.global_position
	Bottom = false
	
func Down():
	$"../../Player".global_position = $"../HallwayPos".global_position
	Top = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Bottom and Input.get_action_strength("ui_up"):
		Up()
	if Top and Input.get_action_strength("ui_down"):
		Down()


func _on_area_3d_body_entered(body):
	Bottom = true

func _on_area_3d_body_exited(body):
	Bottom = false

func UpstairsEnter(body):
	Top = true

func UpstairsExit(body):
	Top = false
