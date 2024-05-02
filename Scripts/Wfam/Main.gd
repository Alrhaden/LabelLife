extends Control

var Navigation = preload("res://Objects_UI/Navigation.tscn")
var GradingPage = preload("res://Objects_UI/Grade_Edit_Page.tscn")
var User = User_info
func _ready() -> void:
	User = GloabalMethods.load_Data()
	Grading_Page()
	Navigation_ints()
	if User.darkMode == true:
		$Background.color = Color("110e1a") 
	else:
		$Background.color = Color("897eab")

func Navigation_ints():
	var instance = Navigation.instantiate()
	add_child(instance)


func Grading_Page():
	var instance = GradingPage.instantiate()
	add_child(instance)


func _on_button_pressed() -> void:
	$Page.free()
	$Button.disabled = true
	await get_tree().create_timer(.1).timeout
	var instance = GradingPage.instantiate()
	add_child(instance)
	$Button.disabled = false
