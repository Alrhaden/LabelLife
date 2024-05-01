extends CanvasLayer

var user_sub = User_info
var nam = ""
var grd = 0.0
var unt = 0.0

func _on_confirm_pressed() -> void:
	user_sub = GloabalMethods.load_Data()
	if nam.length() > 0 and float(unt) > 0 and float(grd) > 0:
		user_sub.add_Subject(nam,unt,grd)
		GloabalMethods.save_Data(user_sub)
		queue_free()
	else:
		pass

func _on_cancel_pressed() -> void:
	queue_free()


func _on_sub_name_text_changed(new_text: String) -> void:
	nam = $Panel/MarginContainer/VBoxContainer/Sub_name.text


func _on_sub_grade_text_changed(new_text: String) -> void:
	grd = float($Panel/MarginContainer/VBoxContainer/Sub_grade.text)

func _on_sub_unit_text_changed(new_text: String) -> void:
	unt = float($Panel/MarginContainer/VBoxContainer/Sub_Unit.text)
