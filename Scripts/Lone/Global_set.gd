extends Resource

class_name User_info

@export var perName = ""
@export var darkMode = true
@export var numSubjects = 0
@export var subjectCode = []
@export var subjectName = []
@export var subjectGrade = []
@export var subjectUnit = []
@export var totalAve = 0.0
	
func add_Subject(s_Code: String, s_Name: String, s_Unit: float, s_grade: float):
	subjectCode.append(s_Code)
	subjectName.append(s_Name)
	subjectGrade.append(s_grade)
	subjectUnit.append(s_Unit)
	numSubjects += 1
	total_Average()
	
func total_Average():
	var totalGrades = 0.0
	var totalUnits = 0
	for i in numSubjects:
		totalGrades += subjectGrade[i] * subjectUnit[i]
		totalUnits += subjectUnit[i]
	totalAve = totalGrades / totalUnits
	
func delete_Subject(num):
	if num <= numSubjects:
		subjectCode[num]
		subjectName[num]
		subjectGrade[num]
	else:
		pass

func read_Subjects():
	for i in numSubjects:
		subjectCode[i]
		subjectName[i]
		subjectGrade[i]


	
