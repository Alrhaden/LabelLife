extends Control

@onready var Background = $Background
@onready var welT = $Welcome_text

func _ready() -> void:
	var tween = create_tween()
	
#FirstTime Animation:
	myTwait($"Logo","modulate", Color("ffffff"),1,3,tween)
	tween.tween_property($"Logo","modulate", Color("ffffff00"),1)
	tween.parallel()
	tween.tween_property(Background,"color",Color("110e1a"),1)
	tween.chain()
	myTwait(welT,"text","Welcome...",.5,1,tween)
	tween.tween_property(welT,"text","",.5)
	tween.tween_property(welT,"text","What's your name?",.5)
	
func _process(delta: float) -> void:
	pass

func myTwait(obj:Object,prop: NodePath,value,speed: float,wait: float,tween: Tween):
	tween.tween_property(obj,prop,value,speed)
	tween.tween_property(obj,prop,value,wait)
