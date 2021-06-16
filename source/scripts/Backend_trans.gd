# FILE NAME Backend_trans.gd
extends Node 

var stats = PlayerStats
var texture = load("res://source/TileSets/animatedTexture.tres")
var state: String = "frontend"
var backendLimiter = 5

func _physics_process(_delta):	
	stats.limiterSet(backendLimiter)
	backendPower()


func backendPower():
	if backendLimiter >= 0:
		
		if Input.is_action_just_pressed("ui_accept") && state == "frontend":
			state = "backend"
			backendLimiter -= 1
		elif Input.is_action_just_pressed("ui_accept") && state == "backend":
			state = "frontend"
			backendLimiter -= 1
		if state == "backend":
			texture.set_current_frame(1)
		elif state == "frontend":
			texture.set_current_frame(0)
		if Input.is_action_just_pressed("ui_accept"):
			stats.limiterSpriteUpdate()	
	else:
		state = "frontend"
# if Input.is_action_just_pressed("gun safety") and safety = false:
# 	safety = true
# elif Input.is_action_just_pressed("gun safety") and safety = true:
# 	safety = false
# if Input.is_action_just_pressed("shoot"):
# 	if safety = false:
# 		print("shoot)
