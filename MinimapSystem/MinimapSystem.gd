extends SubViewport

var camera: Camera3D
@export var player: Node3D


func _ready() -> void:
	camera = $Camera3D


func _process(delta: float) -> void:
	pass
