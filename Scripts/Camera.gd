extends Camera3D
@onready var world_main = get_node("../WorldMain")

func _on_location_body_shape_entered(_body_rid: RID, _body: Node3D, _wwbody_shape_index: int, local_shape_index: int) -> void:
	if Autoload.room_view == [false,false,false] && Autoload.key == false:
		world_main.get_node("Keys").visible = true
		Autoload.key_view = true
		
	$Sky.play("SkyClean")
	$"../Sons/Ruido".playing = false
	if(local_shape_index == 0):
		position = Vector3(4.748, 1.731, -3.062)
		rotation_degrees = Vector3(-45,51.3,0)
	elif(local_shape_index == 1):
		position = Vector3(3.123, 1.487, -2.639)
		rotation_degrees = Vector3(-33.6,51.9,0)
	elif(local_shape_index == 2):
		position = Vector3(-2.998, 1.562, -2.474)
		rotation_degrees = Vector3(-33.6,44.3,0)
	elif(local_shape_index == 3):
		position = Vector3(-3.008, 1.64, 0.388)
		rotation_degrees = Vector3(-33.6,30.6,0)
	elif(local_shape_index == 4):
		if(Autoload.sky_brisa == true):
			$Sky.play("SkyBrisa")
			$"../Sons/Ruido".play()
		position = Vector3(-3.008, 1.64, -5.311)
		rotation_degrees = Vector3(-33.6,44.3,0)
	elif(local_shape_index == 5):
		position = Vector3(-5.474, 1.64, -2.673)
		rotation_degrees = Vector3(-33.6,58.6,0)
	elif(local_shape_index == 6):
		position = Vector3(1.456, 1.602, -5.867)
		rotation_degrees = Vector3(-33.6,50.8,0)
	elif(local_shape_index == 7):
		position = Vector3(-6.615, 1.818, -1.14)
		rotation_degrees = Vector3(-47.4,132.2,-4.7)
	elif(local_shape_index == 8):
		position = Vector3(-1.684, 2.034, -11.808)
		rotation_degrees = Vector3(-33.6,47,0)
	elif(local_shape_index == 9):
		position = Vector3(-6.554, 1.938, -6.269)
		rotation_degrees = Vector3(-47.4,54.5,-4.7)
	elif(local_shape_index == 10):
		$"../Sons/Cano".play()
		$"../Sons/Duto".play()
		position = Vector3(-11.977, 1.938, -2.591)
		rotation_degrees = Vector3(-47.4,54.5,-4.7)
	elif(local_shape_index == 11):
		$"../WorldMain".visible = false
		$"../Sol".visible = true
		$Sky.play("SkyBrisa")
		$"../Sons/Ruido".play()
		position = Vector3(1.674, 2.769, 6.909)
		rotation_degrees = Vector3(-47.4,44.3,-4.7)
	Autoload.local = local_shape_index
