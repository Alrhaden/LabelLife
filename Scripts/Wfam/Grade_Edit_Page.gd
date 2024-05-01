extends MarginContainer

var subjects_bar = preload("res://Objects_UI/box_sub.tscn")
var add_subJ = preload("res://Objects_UI/add_sub.tscn")

var User_sub = User_info
var Sub_c = 0

func _ready() -> void:
	refresh_data()

func add_subject(subJ_name : String, subJ_unit: float, subJ_grade: float) -> void:
	var instance = subjects_bar.instantiate()
	instance.Subject_Name = subJ_name
	instance.Subject_Grade = subJ_grade
	instance.Subject_Unit = subJ_unit
	instance.s_id = User_sub.numSubjects - 2
	$VBoxContainer/ScrollContainer/MarginContainer/VBoxContainer.add_child(instance)

func _on_add_subject_pressed() -> void:
	var instance = add_subJ.instantiate()
	add_child(instance)

func _on_child_exiting_tree(node: Node) -> void:
	refresh_data()

func refresh_data() -> void:
	User_sub = GloabalMethods.load_Data()
	var new_sub_count = User_sub.numSubjects
	if new_sub_count > Sub_c:
		for i in range(Sub_c, new_sub_count):
			add_subject(User_sub.subjectName[i], User_sub.subjectUnit[i], User_sub.subjectGrade[i])
		Sub_c = new_sub_count
		$VBoxContainer/Panel/Grade.text = str(User_sub.totalAve)
