extends CharacterBody3D
@onready var events = get_node("../Events")
@export var speed = 1
@export var move = true
var direction : Vector3
var moving : bool
var position_comparison : Vector3

func _ready():
	moving = false
	position_comparison = position

func player_main(delta):
	
	player_update()
	player_move(delta)
	if move == true:
		player_action()
	move_and_slide()

func player_move(delta):

	#Moving
	if (Input.is_action_pressed("move_up")||Input.is_action_pressed("move_down")||Input.is_action_pressed("move_right")||Input.is_action_pressed("move_left")) && move == true:
		if (!$"../Sons/Passos".playing) && (moving):
			$"../Sons/Passos".playing = true
		
		if($BodyAnimationTree["parameters/WalkToReset/blend_amount"] == 1 && (moving)):
			$FluidAnimation.play("ResetToWalk")
			
		$PlayerParticlesSteps.emitting = true
		if Input.is_action_pressed("move_up"):
			rotation_degrees.y = -90
			position.x -= delta * speed
		
		elif Input.is_action_pressed("move_down"):
			rotation_degrees.y = 90
			position.x += delta * speed
			
		elif Input.is_action_pressed("move_right"):
			rotation_degrees.y = 180
			position.z -= delta * speed
			
		elif Input.is_action_pressed("move_left"):
			rotation_degrees.y = 0
			position.z += delta * speed
		


	if(!moving):
		if ($"../Sons/Passos".playing):
			$"../Sons/Passos".playing = false
		if($BodyAnimationTree["parameters/WalkToReset/blend_amount"] == 0):
			$FluidAnimation.play("WalkToReset")
		$PlayerParticlesSteps.emitting = false
		








func player_action():
	if Input.is_action_just_pressed("action") && Autoload.teleport == true:
		position = Autoload.location_teleport
		$"../Sons/Porta".play()
	if Input.is_action_just_pressed("action") && Autoload.key_view == true && Autoload.key_get == true:
		$"../Sons/Chave".play()
		$"../WorldMain/Keys".visible = false
		Autoload.key = true
		events.get_node("Action").visible = false
	if Input.is_action_just_pressed("action") && Autoload.cano_view == true:
		$"../Sons/Cano".playing = false
		Autoload.cano = true
		events.get_node("Action").visible = false





func player_update():
	if position_comparison == position:
		moving = false
	else:
		moving = true
	position_comparison = position
