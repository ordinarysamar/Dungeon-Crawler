extends KinematicBody2D 

export var ACCELERATION = 0.9
export var MAX_SPEED = 105
export var FRICTION = 0.2
export var GRAVITY = 700
export var JUMP_HEIGHT = 500

var velocity = Vector2.ZERO	

func _physics_process(delta):
	velocity = player_movement(delta)
	velocity.y += GRAVITY * delta # applying the gravity here 
	velocity = move_and_slide(velocity , Vector2.UP)


func player_movement(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")  # getting the input vector
	input_vector = input_vector.normalized()
	if input_vector.x != 0:
		velocity.x = lerp( velocity.x , input_vector.x * MAX_SPEED , ACCELERATION * delta)
	else:
		velocity.x = lerp(velocity.x , 0 , FRICTION)  
	if is_on_floor() and Input.is_action_pressed("ui_up"): 
		velocity.y -= JUMP_HEIGHT 
	if velocity.y < 0 and not is_on_floor():
		GRAVITY = 2000
	else:
		GRAVITY = 700
	return velocity



