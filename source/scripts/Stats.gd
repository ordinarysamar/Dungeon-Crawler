extends Node

var backend = preload ("res://source/scripts/Backend_trans.gd")
onready var energy_sprite = $Limiter

func _process(_delta):
	# print(backendLimiter)
