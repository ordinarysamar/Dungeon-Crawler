extends Node

var limiter: int = 0
onready var energy_sprite = $Limiter

func limiterSet(limiterValue : int):
	limiter = limiterValue
	
func limiterSpriteUpdate():
	energy_sprite.set_frame(0)   #setting the frame to 0 to reset it.
	if limiter == 5: 
		energy_sprite.set_frame(1) # player has used the first power and is in backend	
	if limiter == 4:
		energy_sprite.set_frame(2) # player has used the first power and is out of the backend
	if limiter == 3:
		energy_sprite.set_frame(3) # player has used the second power and is in backend  
	if limiter == 2:
		energy_sprite.set_frame(4) # player has used the second power and is out of backend 
	if limiter == 1:
		energy_sprite.set_frame(5) # player has used the third power and is in of backend 
	if limiter == 0:
		energy_sprite.set_frame(6) # player has used the third power and is out of backend 
