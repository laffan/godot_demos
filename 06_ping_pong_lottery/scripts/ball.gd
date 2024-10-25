extends RigidBody3D

@onready var audio_player: AudioStreamPlayer = $AudioStreamPlayer

func _on_body_entered(_body: Node) -> void:
	audio_player.play()
