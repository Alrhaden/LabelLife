extends MarginContainer

var subjects_bar = preload("res://Objects_UI/box_sub.tscn")
var User_sub = User_info
var Sub_c = 0

func _ready() -> void:
	User_sub = GloabalMethods.load_Data()
	Sub_c = User_sub.numSubjects
	
func _process(delta: float) -> void:
	pass

func add_subject(subJ_name : String,subJ_unit: float, subJ_grade: float):
	var instance = subjects_bar.instantiate()
	instance.Subject_Name = subJ_name
	instance.Subject_Grade = subJ_grade
	instance.Subject_Unit = subJ_unit
	$VBoxContainer/ScrollContainer/MarginContainer/VBoxContainer.add_child(instance)

func _on_add_subject_pressed() -> void:
	pass
