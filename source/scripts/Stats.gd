extends Node

var limiter: int = 0
onready var energy_sprite = $Limiter

func limiterSet(limiterValue : int):
	limiter = limiterValue
	
func limiterCheck() -> String:
	var print_string = ""
	if limiter == 5: 
		print_string = ("you have used your first backend power and you are in backend")
	if limiter == 4:
		print_string = ("you have now returned from the backend and you have 2 backend powers left")
	if limiter == 3:
		print_string = ("you have used your second backend power and you are in backend")
	if limiter == 2:
		print_string = ("you have now returned from the backend and you have 1 backend power left")
	if limiter == 1:
		print_string = ("you have used your third backend power and you are in backend")
	if limiter == 0:
		print_string = ("you have now returned from the backend and you have 0 backend power left") 
	return print_string
