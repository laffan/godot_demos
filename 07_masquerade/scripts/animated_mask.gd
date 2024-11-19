extends Node2D

@onready var ne: Sprite2D = $NE
@onready var nw: Sprite2D = $NW
@onready var se: Sprite2D = $SE
@onready var sw: Sprite2D = $SW
var topSpeed = 1.0

# Dictionary to hold rotation speeds for each sprite
var rotation_speeds: Dictionary = {}

func _ready() -> void:
	# Assign random rotation speeds and directions
	rotation_speeds[ne] = randf_range(-topSpeed, topSpeed)
	rotation_speeds[nw] = randf_range(-topSpeed, topSpeed)
	rotation_speeds[se] = randf_range(-topSpeed, topSpeed)
	rotation_speeds[sw] = randf_range(-topSpeed, topSpeed)

	# Print the assigned speeds for debugging
	print("Rotation speeds assigned: ", rotation_speeds)

func _process(delta: float) -> void:
	# Update the rotation of each sprite
	for sprite in rotation_speeds.keys():
		sprite.rotation += rotation_speeds[sprite] * delta
