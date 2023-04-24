class_name FullscreenOnInput
extends Node

## A drag-and-drop way to implement the ability to toggle fullscreen.

## Input action's name that [FullscreenOnInput] listens for. 
@export var fullscreen_input := "toggle_fullscreen"

func _process(delta):
	if Input.is_action_just_pressed(fullscreen_input):
		var current_mode = DisplayServer.window_get_mode()
		if current_mode == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
