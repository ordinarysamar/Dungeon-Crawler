
extends Actor

# const ACCELERATION 
# const FRICTION
# const MAX_SPEED 

func _physics_process(_delta):
	var jump_interepted = Input.is_action_just_released("ui_up") and velocity.y < 0.0
	var input_velocity = direction()
	velocity = calculate_velocity(velocity , input_velocity , speed , jump_interepted)
	velocity = move_and_slide(velocity , FLOOR_NORMAL)


func direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), 
		-1 if Input.is_action_just_pressed("ui_up") and is_on_floor() else 1
	)
	
func calculate_velocity(linear_velocity: Vector2 , direction: Vector2 , speed: Vector2 , jump_interepted: bool) -> Vector2:
	var Nvelocity = linear_velocity	
	Nvelocity.x = speed.x * direction.x
	Nvelocity.y += gravity * get_physics_process_delta_time()
	if direction.y == -1:
		Nvelocity.y = speed.y * direction.y
	if jump_interepted:
		Nvelocity.y = 0.0
	return Nvelocity  
	

