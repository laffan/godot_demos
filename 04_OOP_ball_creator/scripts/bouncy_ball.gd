extends RigidBody2D

class_name BouncyBall

@export var bounciness: float = 0.5

func init(pos: Vector2, bounce: float) -> BouncyBall:
	position = pos
	bounciness = bounce
	return self

func _ready():
	set_bounce(bounciness)

func set_bounce(bounciness: float):
	var physics_material = PhysicsMaterial.new()
	physics_material.bounce = bounciness
	physics_material_override = physics_material
