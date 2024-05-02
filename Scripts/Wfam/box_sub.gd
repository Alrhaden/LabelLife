extends Panel

@export var Subject_Name = ""
@export var Subject_Grade = 0.0
@export var Subject_Unit = 0.0
@export var s_id = 0

var edit = preload("res://Objects_UI/edit_box.tscn")

func _ready() -> void:
	$Grade.text = str(Subject_Grade)
	$Sub_Name.text = Subject_Name
	$Unit.text = str(Subject_Unit)
func _process(delta: float) -> void:
	pass

func _on_edit_pressed() -> void:
	var instance = edit.instantiate()
	instance.name_edit = Subject_Name
	instance.grade_edit = Subject_Grade
	instance.unit_edit = Subject_Unit
	instance.id_edit = s_id
	add_child(instance)
