//creating student class
class Student {
  String studentName;
  int age;
  String gradeLevel;

  Student(this.studentName, this.age, this.gradeLevel);
// method to display student info
  void Info() {
    print(studentName);
    print(age);
    print(gradeLevel);
  }
}

//creating teacher class
class Teacher {
  String teacherName, subject;
  int age;

  Teacher(this.teacherName, this.age, this.subject);
  //method to display teacher info
  void Info() {
    print(teacherName);
    print(age);
    print(subject);
  }
}
//creating schoolInfo class

class schoolInfo {
  Student? student;
  Teacher? teacher;

//method to create a student
  void createStudent(String name, int age, String gradeLevel) {
    student = Student(name, age, gradeLevel);
  }

//method to create a teacher
  void createTeacher(String name, int age, String subject) {
    teacher = Teacher(name, age, subject);
  }

  void Info() {
    if (student != null) {
      print("Student Information:");
      student!.Info();
    }
    if (teacher != null) {
      print("\nTeacher Information:");
      teacher!.Info();
    }
  }
}

void main() {
  var school = schoolInfo();
  school.createStudent("brian michira", 26, "1st year");
  school.createTeacher("Mr. allan lenkaa", 28, "Flutter");

  school.Info();
}
