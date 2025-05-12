extends Area3D





func _on_body_shape_entered(_body_rid: RID, _body: Node3D, _body_shape_index: int, local_shape_index: int) -> void:
	$Action.visible = true
	Autoload.teleport = true
	if(local_shape_index == 0):
		Autoload.location_teleport = Vector3(-0.377, 0.45, -5.908)
	elif(local_shape_index == 1):
		Autoload.location_teleport = Vector3(-8.142,  0.45, -1.32)
	elif(local_shape_index == 2):
		Autoload.location_teleport = Vector3(-3.961,  0.45, -11.59)
	elif(local_shape_index == 3):
		Autoload.location_teleport = Vector3(-0.962,  0.45, -4.507)
	elif(local_shape_index == 4):
		Autoload.location_teleport = Vector3(-7.391,  0.45, -2.805)
	elif(local_shape_index == 5):
		Autoload.location_teleport = Vector3(-4.045,  0.45, -10.405)
	elif(local_shape_index == 6 && Autoload.key == true):
		Autoload.location_teleport = Vector3(-6.714,  0.45, -7.526)
	elif(local_shape_index == 7):
		Autoload.location_teleport = Vector3(-4.849,  0.45, -6.704)
	elif(local_shape_index == 8):
		Autoload.location_teleport = Vector3(-12.408,  0.45, -4.855)
	elif(local_shape_index == 9 && Autoload.cano == true):
		Autoload.location_teleport = Vector3(-0.655,  0.45, 4.607)
	else:
		$Action.visible = false
		Autoload.teleport = false




	


func _on_body_exited(_body: Node3D) -> void:
	Autoload.teleport = false
	$Action.visible = false
