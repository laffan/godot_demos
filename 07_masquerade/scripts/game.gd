extends Node

@onready var mouse_mask: Node2D = $SubViewportMouse/MouseMask

func _process(delta) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		mouse_mask.set_peek_position(get_viewport().get_mouse_position())
	else: 
		mouse_mask.hide_peek()
