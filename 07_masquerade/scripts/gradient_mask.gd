extends Sprite2D
@onready var gradient_shine: Sprite2D = $GradientShine

func _ready() -> void:
	var tween = create_tween().set_loops()
	tween.tween_property(gradient_shine, "position:x", 800, 3.0)
	tween.tween_property(gradient_shine, "position:x", -800, 3.0)
