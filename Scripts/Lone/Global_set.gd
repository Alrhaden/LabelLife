extends Resource

class_name User_info

@export var perName = ""
@export var darkMode = true
@export var numSubjects = 0
@export var subjectCode = []
@export var subjectName = []
@export var subjectGrade = []
	
func add_Subject(s_Code: String, s_Name: String, s_grade: int):
	subjectCode.append(s_Code)
	subjectName.append(s_Name)
	subjectGrade.append(s_grade)
	numSubjects += 1

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
	
