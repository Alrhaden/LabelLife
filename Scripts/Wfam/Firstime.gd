extends Control

@onready var Background = $Background
@onready var welT = $Welcome_text

var User = User_info.new()

func _ready() -> void:
	var tween = create_tween()
	welT.add_theme_font_size_override("font_size",30)
#Animation Logo:
	tween.tween_property($"Logo","scale",Vector2(.3,.3),.5)
	tween.parallel()
	GloabalMethods.myTwait($"Logo","modulate", Color("ffffff"),2,3,tween)
	tween.chain()
	tween.tween_property($"Logo","modulate", Color("ffffff00"),1)
	tween.parallel()
	tween.tween_property($"Logo","position",Vector2(240,400),1.0)
	tween.parallel()
	tween.tween_property(Background,"color",Color("110e1a"),1)
		
#First time Animation:
	GloabalMethods.myTwait(welT,"text","Welcome...",.5,1,tween)
	tween.tween_property(welT,"text","",.5)
	tween.tween_property(welT,"text","What's your name?",.5)
	tween.tween_property(welT,"position",Vector2(64,300),.5)
	tween.parallel()
	tween.tween_property($Welcome_text/LineEdit,"editable",true,.1)
	tween.tween_property($Welcome_text/LineEdit,"visible",true,.1)
	tween.parallel()
	tween.tween_property($Welcome_text/Button,"visible",true,.1)
	
func _on_line_edit_text_changed(_new_text: String) -> void:
	if $Welcome_text/LineEdit.text.length() >= 3:
		$Welcome_text/Button.disabled = false
	else:
		$Welcome_text/Button.disabled = true

func _on_button_pressed() -> void:
	var tween = create_tween()
	User.perName = $Welcome_text/LineEdit.text
	GloabalMethods.save_Data(User)
	$Welcome_text/Button.queue_free()
	$Welcome_text/LineEdit.queue_free()
	$Welcome_text/Yes.disabled = false
	$Welcome_text/Nope.disabled = false
	tween.tween_property(welT,"text","",.5)
	GloabalMethods.myTwait(welT,"text","Darkmode? Lovaah?",.5,1,tween)
	tween.parallel()
	tween.tween_property($Welcome_text/Yes,"visible",true,.1)
	tween.parallel()
	tween.tween_property($Welcome_text/Nope,"visible",true,.1)
	tween.parallel()
	tween.tween_property($Welcome_text/Yes,"position",Vector2($Welcome_text/Yes.position.x,$Welcome_text/Yes.position.y-70),1)
	tween.parallel()
	tween.tween_property($Welcome_text/Nope,"position",Vector2($Welcome_text/Nope.position.x,$Welcome_text/Nope.position.y-70),1)
	
func _on_yes_pressed() -> void:
	User.darkMode = true
	GloabalMethods.save_Data(User)
	get_tree().change_scene_to_file("res://Scenes/Splash.tscn")
func _on_nope_pressed() -> void:
	User.darkMode = false
	GloabalMethods.save_Data(User)
	get_tree().change_scene_to_file("res://Scenes/Splash.tscn")
