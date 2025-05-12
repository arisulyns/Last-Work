extends Node


#Event
var location_teleport: Vector3
var teleport = false
var room_view = [true,true,true]
var room_animated = [true,true,true]
var local = 0 
var key = false
var key_view = false
var key_get = false
var cano = false
var cano_view = false
var sky_brisa = false


#Player values
var player_sprite : String = "up"
var player_moving : bool
var player_position : Vector3

#Enemy values
var enemy_status : String


#Camera values
var camera_rotate : int = 1
