class_name BouncyBall
extends RigidBody2D

var bounciness: float = 0

func init(pos: Vector2, bounce: float):
	position = pos
	bounciness = bounce

func _ready():
	set_bounce(bounciness)

func set_bounce(bounciness: float):
	var physics_material = PhysicsMaterial.new()
	physics_material.bounce = bounciness
	physics_material_override = physics_material
