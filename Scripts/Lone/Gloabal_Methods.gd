extends Node

func myTwait(obj:Object,prop: NodePath,value,speed: float,wait: float,tween: Tween):
	tween.tween_property(obj,prop,value,speed)
	tween.tween_property(obj,prop,value,wait)

func save_Data(Res: Resource):
	ResourceSaver.save(Res,"res://MySettings.tres")
	
func load_Data():
	if ResourceLoader.exists("res://MySettings.tres"):
		return ResourceLoader.load("res://MySettings.tres")
	return null
