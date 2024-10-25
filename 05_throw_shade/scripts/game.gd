extends Node2D

@onready var point_light_2d: PointLight2D = $PointLight2D

# In your main scene
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		point_light_2d.position = get_global_mouse_position()
