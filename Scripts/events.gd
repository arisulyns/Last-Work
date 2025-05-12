extends Area3D

@onready var world_main = get_node("../WorldMain")



func _on_body_shape_entered(_body_rid: RID, _body: Node3D, _body_shape_index: int, local_shape_index: int) -> void:
	if Autoload.room_view[0] == false && Autoload.local != 6 && Autoload.local > 5:
		world_main.get_node("Node/ParedesInvisiveis/1").visible = true
		world_main.get_node("Node/ParedesInvisiveis/1").position = Vector3(0,0,0)
		
	if Autoload.room_view[1] == false && Autoload.local != 7 && Autoload.local > 5:
		world_main.get_node("Node/ParedesInvisiveis/2").visible = true
		world_main.get_node("Node/ParedesInvisiveis/2").position = Vector3(0,0,0)
		
	if Autoload.room_view[2] == false && Autoload.local != 8 && Autoload.local > 5:
		world_main.get_node("Node/ParedesInvisiveis/4").visible = true
		world_main.get_node("Node/ParedesInvisiveis/4").position = Vector3(0,0,0)
		
	if Autoload.room_view == [false,false,false] && Autoload.local == 9:
		Autoload.sky_brisa = true
		world_main.get_node("Node/ParedesInvisiveis/3").visible = true
		world_main.get_node("Node/ParedesInvisiveis/3").position = Vector3(0,0,0)
		
	
		
	$Action.text = "Pressione \"E\" para pegar a chave"
	if(local_shape_index == 0):
		Autoload.room_view[0] = false 
		if(Autoload.room_animated[0] == true):
			Autoload.room_animated[0] = false 
			$"../RoomAnimated".play("ROOM1")
	elif(local_shape_index == 1):
		Autoload.room_view[1] = false
		if(Autoload.room_animated[1] == true):
			Autoload.room_animated[1] = false 
			$"../RoomAnimated".play("ROOM2")
	elif(local_shape_index == 2):
		Autoload.room_view[2] = false 
		if(Autoload.room_animated[2] == true):
			Autoload.room_animated[2] = false 
			$"../RoomAnimated".play("ROOM3")
	elif(local_shape_index == 3):
		$Action.text = "Pressione \"E\" para consertar o cano"
		Autoload.cano_view = true
		$Action.visible = true
	elif(local_shape_index == 4 && Autoload.key_view == true && Autoload.key == false):
		$Action.visible = true
		Autoload.key_get = true
	elif(local_shape_index == 5 && Autoload.key_view == true && Autoload.key == false):
		$Action.visible = true
		Autoload.key_get = true
	elif(local_shape_index == 6 && Autoload.key_view == true && Autoload.key == false):
		$Action.visible = true
		Autoload.key_get = true
		


func _on_body_shape_exited(_body_rid: RID, _body: Node3D, _body_shape_index: int, local_shape_index: int) -> void:
	if Autoload.room_view == [false,false,false] && Autoload.local == 9:
		Autoload.sky_brisa = true
		world_main.get_node("Node/ParedesInvisiveis/3").visible = true
		world_main.get_node("Node/ParedesInvisiveis/3").position = Vector3(0,0,0)
	
	if(local_shape_index == 0):
		Autoload.room_view[0] = false
		if(Autoload.room_animated[0] == true):
			Autoload.room_animated[0] = false 
	elif(local_shape_index == 1):
		Autoload.room_view[1] = false
		if(Autoload.room_animated[1] == true):
			Autoload.room_animated[1] = false 
	elif(local_shape_index == 2):
		Autoload.room_view[2] = false 
		if(Autoload.room_animated[2] == true):
			Autoload.room_animated[2] = false 
	elif(local_shape_index == 3):
		$Action.visible = false
		Autoload.cano_view = false
	elif(local_shape_index == 4):
		$Action.visible = false
		Autoload.key_get = false
	elif(local_shape_index == 5):
		$Action.visible = false
		Autoload.key_get = false
	elif(local_shape_index == 6):
		$Action.visible = false
		Autoload.key_get = false
	else:
		$Action.visible = false
		Autoload.key_get = false
