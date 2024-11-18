extends Node2D

#@onready var camera_scene1: Node2D = $SubReveal/Mask2/RevealedItem
#@onready var zoom_slider: HSlider = $CameraDistance
#
#func _ready():
	## Set up slider properties
	#zoom_slider.min_value = 0.1
	#zoom_slider.max_value = 2.0
	#zoom_slider.value = 1.0
	#
	## New Godot 4 signal connection syntax
	#zoom_slider.value_changed.connect(_on_zoom_changed)
#
#func _on_zoom_changed(value: float):
	## Only update camera_scene1's zoom
	#camera_scene1.set_zoom(value)
