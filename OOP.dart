 import 'dart:io'
 //Create a dart program that accepts a student's name that accepts 3 subjects then calculate the average mark and it must display the grade using a dart method
  
  class Student{
    String? name;
    double? subject1;
    double? subject2;
    double? subject3;

  double calculateAverage(subject1,subject2,subject3){
    double output = (subject1+subject2+subject3)/3;
    return (output);
  }
  }

  String getGrade(double average) {
    if (average >= 80) {
      return 'A';
    } else if (average >= 70) {
      return 'B';
    } else if (average >= 60) {
      return 'C';
    } else if (average >= 50) {
      return 'D';
    } else {
      return 'F';
    }
  }