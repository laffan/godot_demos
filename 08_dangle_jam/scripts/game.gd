extends Node2D

# Nodes
@onready var path_follow: PathFollow2D = $Path2D/PathFollow2D
@onready var shape: Sprite2D = $Path2D/PathFollow2D/Shapes

# Movement settings
@export var speed: float = 120.0 
	
func _process(delta):
	path_follow.progress += speed * delta
