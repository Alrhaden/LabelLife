extends Control

@onready var Background = $Background
@onready var welT = $Welcome_text

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
	tween.tween_property(Background,"color",Color("110e1a"),1)
	tween.chain()
	
#First time Animation:
	GloabalMethods.myTwait(welT,"text","Welcome...",.5,1,tween)
	tween.tween_property(welT,"text","",.5)
	tween.tween_property(welT,"text","What's your name?",.5)
	
func _process(delta: float) -> void:
	pass
