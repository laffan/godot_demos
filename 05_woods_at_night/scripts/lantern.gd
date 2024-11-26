extends PointLight2D

@export var min_energy := 0.9
@export var max_energy := 1.1
@export var flicker_time := 0.075

func _ready():
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = flicker_time
	timer.timeout.connect(flicker)
	timer.start()

func flicker():
	energy = randf_range(min_energy, max_energy)
"res://assets/png/background.png"
