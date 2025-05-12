extends Node3D


func home_change():
	if(Autoload.camera_rotate == 1):
		$"Scene Collection/Right".visible = true
		$"Scene Collection/Top".visible = false
		$"Scene Collection/Left".visible = false
		$"Scene Collection/Down".visible = false
	elif(Autoload.camera_rotate == 2):
		$"Scene Collection/Right".visible = false
		$"Scene Collection/Top".visible = true
		$"Scene Collection/Left".visible = false
		$"Scene Collection/Down".visible = false
	elif(Autoload.camera_rotate == 3):
		$"Scene Collection/Right".visible = false
		$"Scene Collection/Top".visible = false
		$"Scene Collection/Left".visible = true
		$"Scene Collection/Down".visible = false
	elif(Autoload.camera_rotate == 4):
		$"Scene Collection/Right".visible = false
		$"Scene Collection/Top".visible = false
		$"Scene Collection/Left".visible = false
		$"Scene Collection/Down".visible = true
