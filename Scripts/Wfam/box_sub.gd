extends Panel

@export var Subject_Name = ""
@export var Subject_Grade = 0.0
@export var Subject_Unit = 0.0

func _ready() -> void:
	$Grade.text = str(Subject_Grade)
	$Sub_Name.text = Subject_Name
	$Unit.text = str(Subject_Unit)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
