extends Node

func myTwait(obj:Object,prop: NodePath,value,speed: float,wait: float,tween: Tween):
	tween.tween_property(obj,prop,value,speed)
	tween.tween_property(obj,prop,value,wait)
