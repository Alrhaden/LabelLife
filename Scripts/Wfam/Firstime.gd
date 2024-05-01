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
	User.perName = $Welcome_text/LineEdit.text
	GloabalMethods.save_Data(User)
