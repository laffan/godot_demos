extends SubViewport

@onready var wheel: Node3D = $wheel
@onready var slider: HSlider = %Slider

func _process(delta: float) -> void:
	wheel.rotation.x += delta * slider.value
