# the up and down are switched in GODOT (to be noted)

extends KinematicBody2D
class_name Actor

const FLOOR_NORMAL = Vector2.UP

export(Vector2) var speed = Vector2(300 , 1000)
export(int) var gravity = 4000

var velocity = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
