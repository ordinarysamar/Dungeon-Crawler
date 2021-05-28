extends TileMap

var texture = load("res://source/TileSets/animatedTexture.tres")
var state: String = "frontend"

func _physics_process(_delta):
	if Input.is_action_just_pressed("ui_accept") && state == "frontend":
		state = "backend"
	elif Input.is_action_just_pressed("ui_accept") && state == "backend":
		state = "frontend"
	if state == "backend":
		texture.set_current_frame(1)
	elif state == "frontend":
		texture.set_current_frame(0)


# if Input.is_action_just_pressed("gun safety") and safety = false:
# 	safety = true
# elif Input.is_action_just_pressed("gun safety") and safety = true:
# 	safety = false
# if Input.is_action_just_pressed("shoot"):
# 	if safety = false:
# 		print("shoot)
