extends Control

var Navigation = preload("res://Objects_UI/Navigation.tscn")
var GradingPage = preload("res://Objects_UI/Grade_Edit_Page.tscn")

func _ready() -> void:
	Grading_Page()
	Navigation_ints()
	
func Navigation_ints():
	var instance = Navigation.instantiate()
	add_child(instance)
	
func Grading_Page():
	var instance = GradingPage.instantiate()
	add_child(instance)
