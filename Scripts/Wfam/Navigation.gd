extends CanvasLayer

var User = User_info.new()

func _ready() -> void:
	User = GloabalMethods.load_Data()
	$Navigation.visible = false
	$Blacked.visible = false
	if User.darkMode == true:
		$Backgroud.color = Color("110e1a") 
		$Navigation/Nav_color.color = Color("504365")
	else:
		$Backgroud.color = Color("897eab")
		$Navigation/Nav_color.color = Color("110e1a")
		
	$Navigation/MarginContainer/VBoxContainer3/User_Name.text = User.perName
	
func _on_nav_button_pressed() -> void:
	navigation_anim()

func _on_blacked_gui_input(event: InputEvent) -> void:
	navigation_anim()
	
func navigation_anim():
	if $Navigation.visible == false:
		$NavButton.text = "<"
		var tween = create_tween()
		tween.tween_property($Navigation,"position",Vector2(0,0),.15)
		tween.parallel()
		tween.tween_property($NavButton,"position",Vector2(192,408),.15)
		$Navigation.visible = true
		$Blacked.visible = true
		$Blacked.position = Vector2(0,0)
	else:
		$NavButton.text = ">"
		var tween = create_tween()
		tween.tween_property($Navigation,"position",Vector2(-192,0),.15)
		tween.parallel()
		tween.tween_property($NavButton,"position",Vector2(-15,408),.15)
		tween.parallel()
		tween.tween_property($Navigation,"visible",false,.5)
		$Blacked.visible = false
		$Blacked.position = Vector2(-480,0)
