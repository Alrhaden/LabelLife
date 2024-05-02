extends Resource

class_name User_info

@export var perName = ""
@export var darkMode = true
@export var numSubjects = 0
@export var id_p = []
@export var subjectName = []
@export var subjectGrade = []
@export var subjectUnit = []
@export var totalAve = 0.0

func add_Subject(s_Name: String, s_Unit: float, s_grade: float, s_id: int):
	subjectName.append(s_Name)
	subjectGrade.append(s_grade)
	subjectUnit.append(s_Unit)
	id_p.append(s_id)
	numSubjects += 1
	total_Average()

func edit_Subject(s_Name: String, s_Unit: float, s_grade: float,s_num: int):
	subjectName[s_num] = s_Name
	subjectGrade[s_num] = s_grade
	subjectUnit[s_num] = s_Unit
	
func total_Average():
	var totalGrades = 0.0
	var totalUnits = 0
	for i in numSubjects:
		totalGrades += subjectGrade[i] * subjectUnit[i]
		totalUnits += subjectUnit[i]
	totalAve = totalGrades / totalUnits
	
func delete_Subject(num: int):
	if num < numSubjects and num >= 0:
		subjectName.remove_at(num)
		subjectGrade.remove_at(num)
		subjectUnit.remove_at(num)
		var deleted_id = id_p[num]
		id_p.remove_at(num)
		numSubjects -= 1
		if numSubjects > 0:
			for i in range(num, numSubjects):
				if id_p[i] > deleted_id:
					id_p[i] -= 1
			total_Average()
		else:
			totalAve = 0.0
	else:
		print("Invalid subject number")

func read_Subjects():
	for i in numSubjects:
		subjectName[i]
		subjectGrade[i]


	
