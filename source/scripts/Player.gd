
# the up and down are switched in GODOT (to be noted)


extends KinematicBody2D

# const ACCELERATION 
# const FRICTION
# const MAX_SPEED 
export(int) var gravity = 3000

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_velocity = direction()
	
	if input_velocity != Vector2.ZERO:
		velocity = input_velocity 
	else:
		velocity = Vector2.ZERO

	velocity.y += gravity * delta
	velocity = move_and_slide(velocity)




func direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), 
		-1 if Input.is_action_just_pressed("ui_up") else 1
	)

