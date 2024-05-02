extends Node

func myTwait(obj:Object,prop: NodePath,value,speed: float,wait: float,tween: Tween):
	tween.tween_property(obj,prop,value,speed)
	tween.tween_property(obj,prop,value,wait)

func save_Data(Res: Resource):
	ResourceSaver.save(Res,"user://MySettings.tres")
	
func load_Data():
	if ResourceLoader.exists("user://MySettings.tres"):
		return ResourceLoader.load("user://MySettings.tres")
	return null
