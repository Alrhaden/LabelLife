extends CanvasLayer

var user_sub = User_info
var name_edit = ""
var grade_edit = 0.0
var unit_edit = 0.0
var id_edit = 0

func _ready() -> void:
	$Panel/MarginContainer/VBoxContainer/Sub_name.placeholder_text = name_edit
	$Panel/MarginContainer/VBoxContainer/Sub_grade.placeholder_text = str(grade_edit)
	$Panel/MarginContainer/VBoxContainer/Sub_Unit.placeholder_text = str(unit_edit)

func _on_confirm_pressed() -> void:
	user_sub = GloabalMethods.load_Data()
	if name_edit.length() > 0 and float(unit_edit) > 0 and float(grade_edit) > 0:
		print(id_edit)
		user_sub.edit_Subject(name_edit,unit_edit,grade_edit,id_edit)
		GloabalMethods.save_Data(user_sub)
		queue_free()
	else:
		pass

func _on_cancel_pressed() -> void:
	queue_free()


func _on_sub_name_text_changed(new_text: String) -> void:
	name_edit = $Panel/MarginContainer/VBoxContainer/Sub_name.text


func _on_sub_grade_text_changed(new_text: String) -> void:
	grade_edit = float($Panel/MarginContainer/VBoxContainer/Sub_grade.text)


func _on_sub_unit_text_changed(new_text: String) -> void:
	unit_edit = float($Panel/MarginContainer/VBoxContainer/Sub_Unit.text)
