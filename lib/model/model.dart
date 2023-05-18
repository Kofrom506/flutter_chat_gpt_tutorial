class Student{
  String? name;
  String? studentId;
  String? studentProgram;
  double? GPA;

  Student(String name, studentId, studentProgram, double GPA){
    this.name = name;
    this.studentId = studentId;
    this.studentProgram = studentProgram;
    this.GPA = GPA;
  }
  Map<String, dynamic> toJson() => {
    'studentGPA': this.studentId,
    'studentID': this.studentId,
    'studentName': this.name,
    'studentProgramID': this.studentProgram,
  };
}