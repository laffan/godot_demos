extends Node2D

@onready var path_follow: PathFollow2D = $Path2D/PathFollow2D
@export var speed: float = 120.0 
	
func _process(delta):
	path_follow.progress += speed * delta
