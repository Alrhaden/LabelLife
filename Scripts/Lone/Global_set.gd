extends Resource

class_name User_info

@export var perName = ""
@export var darkMode = true
@export var numSubjects = 0
@export var subjectName = []
@export var subjectGrade = []
@export var subjectUnit = []
@export var totalAve = 0.0

func add_Subject(s_Name: String, s_Unit: float, s_grade: float):
	subjectName.append(s_Name)
	subjectGrade.append(s_grade)
	subjectUnit.append(s_Unit)
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
	
func delete_Subject(num):
	if num <= numSubjects:
		subjectName[num]
		subjectGrade[num]
	else:
		pass

func read_Subjects():
	for i in numSubjects:
		subjectName[i]
		subjectGrade[i]


	
