extends Node

@onready var player = $".."
@onready var animated_sprite_2d = $"../AnimatedSprite2D"

func _process(_delta):
	if Input.is_action_pressed(player.input_left):
		if player.is_on_floor():
			animated_sprite_2d.play("walk_left")
		
		animated_sprite_2d.set("flip_h", false)
	if Input.is_action_pressed(player.input_right):
		if player.is_on_floor():
			animated_sprite_2d.play("walk_left")
		
		animated_sprite_2d.set("flip_h", true)
	
	if not player.is_on_floor():
		animated_sprite_2d.play("jump_left")
	
	if (
			not Input.is_action_pressed(player.input_left)
			and not Input.is_action_pressed(player.input_right)
			and player.is_on_floor()
	):
		animated_sprite_2d.play("idle_left")
