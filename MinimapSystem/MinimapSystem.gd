extends Node

# Top-down camera used for minimap
@export var minimap_camera: Camera3D
# player instance to make the camera follow
@export var player: Node3D



# Thanks to: https://stackoverflow.com/questions/77315722/split-screen-in-godot-3d-with-a-single-scene-containing-2-cameras
# For teaching me how to render with 2 cameras without scene replication as in general SubViewport usage


func _ready():
	var sub_viewport: SubViewport = $Panel/SubViewportContainer/SubViewport
	var normal_camera: Camera3D = get_viewport().get_camera_3d()
	
	var minimap_camera_rid = minimap_camera.get_camera_rid()
	var normal_camera_rid = normal_camera.get_camera_rid()
	
	var sub_viewport_rid = sub_viewport.get_viewport_rid()
	var viewport_rid = get_viewport().get_viewport_rid()
	
	RenderingServer.viewport_attach_camera(sub_viewport_rid, minimap_camera_rid)
	RenderingServer.viewport_attach_camera(viewport_rid, normal_camera_rid)
