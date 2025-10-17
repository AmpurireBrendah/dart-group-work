import 'dart:io';

//Create a dart program that accepts a student's name that accepts 3 subjects then calculate the average mark and it must display the grade using a dart method
  //class Student{
   // String? name;
    //List <int> scores?;

    //double calculateAverage(){
       // ;
   // }

  //}

  //Create a dart program that accepts a student's name and stores 3 subjects then calculate the average mark and it must display the grade using a dart method without using a list and ensure that the attributes on a class are required
  class Student{
    String name;
    double subject1;
    double subject2;
    double subject3;

// Constructor
    Student(this.name,this.subject1,this.subject2,this.subject3);
     
     double calculateAverage(){
        return(subject1+subject2+subject3)/3;
     }

     String displayGrade(double average){
        if (average >= 80) return "A";
        if (average >= 70) return "B";
        if (average >= 60) return "C";
        if (average >= 50) return "D";
        else return "F";
     }

     // Method display results
     void displayResults(){
        double avg = calculateAverage();
        print('\n ---Result report---');
        print("Name: $name");
        print("Subject1: $subject1");
        print("Subject2: $subject2");
        print("Subject3: $subject3");
        print("Average: ${avg.toStringAsFixed(2)}");
        print("Grade: ${displayGrade(avg)}");

     }
  }

     // Getting input without null safety
    void main(){
        stdout.write("Enter student's name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter mark for subject 1: ");
        double subject1 = double.parse(stdin.readLineSync()!);

        stdout.write("Enter mark for subject 2: ");
        double subject2 =double.parse(stdin.readLineSync()!);

        stdout.write("Enter mark for subject 3: ");
        double subject3 = double.parse(stdin.readLineSync()!);


     // Create student object.
     Student student = Student(name,subject1,subject2,subject3);

     //Display student results.
     student.displayResults();
     }

     //Utilize the same program ensure that you have properties but the properties must not be a list. Ensure that the attributes of a class are nullable
     //with a default value to ensure that we do not have any null pointer exeptions.

     import 'dart:io';

class Student {
  String? name;
  double? subject1;
  double? subject2;
  double? subject3;

  // Constructor with default values to prevent null errors
  Student({
    this.name = "Unknown",
    this.subject1 = 0.0,
    this.subject2 = 0.0,
    this.subject3 = 0.0,
  });

  // Method to calculate average safely
  double calculateAverage() {
    return ((subject1 ?? 0) + (subject2 ?? 0) + (subject3 ?? 0)) / 3;
  }

  // Method to determine grade
  String displayGrade(double average) {
    if (average >= 80) return "A";
    if (average >= 70) return "B";
    if (average >= 60) return "C";
    if (average >= 50) return "D";
    return "F";
  }

  // Method to display results
  void displayResults() {
    double avg = calculateAverage();
    print('\n--- Result Report ---');
    print("Name: ${name ?? 'Unknown'}");
    print("Subject 1: ${subject1 ?? 0}");
    print("Subject 2: ${subject2 ?? 0}");
    print("Subject 3: ${subject3 ?? 0}");
    print("Average: ${avg.toStringAsFixed(2)}");
    print("Grade: ${displayGrade(avg)}");
  }
}

void main() {
  stdout.write("Enter student's name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter mark for subject 1: ");
  double? subject1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Enter mark for subject 2: ");
  double? subject2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Enter mark for subject 3: ");
  double? subject3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // Create student object with nullable-safe values
  Student student = Student(
    name: name,
    subject1: subject1,
    subject2: subject2,
    subject3: subject3,
  );

  // Display student results
  student.displayResults();
}


     //Utiize the same program using a list to store the marks and the properties of the class must be required
     // the average mark function must use a basic / beginer approach .(Ensure that all approaches utilize a constructor 
     // and in all approaches must have the right output.)

     import 'dart:io';

class Student {
  String name;
  List<double> marks; // list to hold marks

  // Constructor with required properties
  Student({required this.name, required this.marks});

  // Basic method to calculate average using a loop
  double calculateAverage() {
    double sum = 0.0;
    for (var mark in marks) {
      sum += mark; // add each mark to the sum
    }
    return sum / marks.length; // divide by number of subjects
  }

  // Method to determine grade
  String displayGrade(double average) {
    if (average >= 80) return "A";
    if (average >= 70) return "B";
    if (average >= 60) return "C";
    if (average >= 50) return "D";
    return "F";
  }

  // Method to display results
  void displayResults() {
    double avg = calculateAverage();
    print('\n--- Result Report ---');
    print("Name: $name");
    print("Marks: $marks");
    print("Average: ${avg.toStringAsFixed(2)}");
    print("Grade: ${displayGrade(avg)}");
  }
}

void main() {
  stdout.write("Enter student's name: ");
  String name = stdin.readLineSync()!;

  // Get marks from user
  List<double> marks = [];
  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter mark for subject $i: ");
    double mark = double.parse(stdin.readLineSync()!);
    marks.add(mark);
  }

  // Create student object
  Student student = Student(name: name, marks: marks);

  // Display student results
  student.displayResults();
}

  
