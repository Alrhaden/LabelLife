extends Control


var User = User_info.new()
@onready var tween = create_tween()

func _ready() -> void:
	User = load("res://MySettings.tres")
	#Animation Logo
	if User.darkMode == true:
		$Background.color = Color("000000")
		tween.tween_property($"Logo","scale",Vector2(.3,.3),.5)
		tween.parallel()
		GloabalMethods.myTwait($"Logo","modulate", Color("ffffff"),2,3,tween)
		tween.chain()
		tween.tween_property($"Logo","modulate", Color("ffffff00"),1)
		tween.parallel()
		tween.tween_property($"Logo","position",Vector2(240,400),1.0)
		tween.parallel()
		tween.tween_property($Background,"color",Color("110e1a"),1)
	else:
		$Background.color = Color("ffffff")
		tween.tween_property($"Logo","scale",Vector2(.3,.3),.5)
		tween.parallel()
		GloabalMethods.myTwait($"Logo","modulate", Color("ffffff"),2,3,tween)
		tween.chain()
		tween.tween_property($"Logo","modulate", Color("ffffff00"),1)
		tween.parallel()
		tween.tween_property($"Logo","position",Vector2(240,400),1.0)
		tween.parallel()
		tween.tween_property($Background,"color",Color("897eab"),1)

func _process(delta: float) -> void:
	if $Background.color == Color("897eab") or $Background.color == Color("110e1a"):
		get_tree().change_scene_to_file("res://Scenes/Main.tscn")
