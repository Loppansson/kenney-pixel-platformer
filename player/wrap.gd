extends Node

@export var left_limit = -251 
@export var right_limit = 1315 
@onready var player = $".."


func _physics_process(delta):
	if player.position.x <= left_limit and player.velocity.x < 0:
		player.position.x = right_limit
	if player.position.x >= right_limit and player.velocity.x > 0:
		player.position.x = left_limit
