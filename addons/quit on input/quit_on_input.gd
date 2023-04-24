class_name QuitOnInput
extends Node

## A drag-and-drop way to implement the ability to quit the game.

## Input action's name that [QuitOnInput] listens for. 
@export var quit_input := "quit_game"

func _process(delta):
	if Input.is_action_just_pressed(quit_input):
		get_tree().quit()
