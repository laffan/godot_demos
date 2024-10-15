extends StaticBody2D

@export var pitchAdjustment: float
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		
		# Get the bus index (assuming you named your bus "PitchShift")
		var bus_index = AudioServer.get_bus_index("Bum")
	
		# Get the pitch shift effect (assuming it's the first effect on the bus)
		var pitch_effect = AudioServer.get_bus_effect(bus_index, 1)
	
		# Change the pitch	
		pitch_effect.pitch_scale = pitchAdjustment
		
		# Play the sound
		audio_player.play()
	
