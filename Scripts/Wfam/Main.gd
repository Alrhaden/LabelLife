extends Control

var Navigation = preload("res://Objects_UI/Navigation.tscn")

func _ready() -> void:
	Navigation_ints()

func Navigation_ints():
	var instance = Navigation.instantiate()
	add_child(instance)
