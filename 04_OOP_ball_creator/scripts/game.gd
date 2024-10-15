extends Node2D

@onready var bounciness_slider = $UI/BouncinessSlider
@onready var bounciness_label = $UI/BouncinessLabel

var BouncyBall = preload("res://scenes/bouncy_ball.tscn")

# Signal on slider change
func _on_bounciness_slider_value_changed(value: float) -> void:
	bounciness_label.text = "Bounciness: %.2f" % value

# Because the UI needs to be clicked as well, we'll use 
# _unhandled input so balls aren't instantaited when the
# user clicks the slider.
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		spawn_bouncy_toy(get_global_mouse_position())


func spawn_bouncy_toy(position):
	# Create a new ball
	var new_toy = BouncyBall.instantiate()
	# Use init() to set the bounciness
	new_toy.init(position, bounciness_slider.value)
	# Add ball to scene
	add_child(new_toy)
	
