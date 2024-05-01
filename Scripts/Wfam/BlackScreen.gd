extends Node

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if GloabalMethods.load_Data() == null:
		get_tree().change_scene_to_file("res://Scenes/Firstime.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/Splash.tscn")
