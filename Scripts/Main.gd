extends Node3D
var Player
var World

func _ready():
	Player = get_node("PlayerMain")


#Looping+
func _physics_process(delta):
	Player.player_main(delta)








	
	
