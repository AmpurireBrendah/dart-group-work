import 'dart:io';

void main(){
    const pie =20.8;
    print(pie); //pie = 3.14; It is immutable

    //final age = 22;
    //print(age); // Age is also immutable

    final dateTime = DateTime.now();
    print(dateTime); //Prints the current date and time.

    num x = 1; // x can have both int and double values
x += 2.5;
print(x);

var a = 1;
var hex = 0xDEADBEEF; //Integers are numbers without a decimal point

var y = 1.1;
var exponents = 1.42e5; //If a number includes a decimal, it is a double
print(a);
print(y);

double z = 1; // Equivalent to double z = 1.0.
print(z);

//Here's how you turn a string into a number, or vice versa:
// String -> int
var one = int.parse('1');
assert(one == 1);
print(one); //Output :1

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);
print(onePointOne);// Prints 1.1

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');

//You can put the value of an expression inside a string by using ${expression}.
var s = 'string interpolation';

assert(
  'Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.',
);
assert(
  'That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!',
);
print('All assertions passed!');

//Type inferencing: This is when you are not going to work with data types

  var newName = "Patricia"; //String name = "Patricia";
  var newAge = 22; // Int age = 21;
  var height = 21.1; // Double height = 21.1;
 
  print (newAge);
  print(newName);
  print((height));

  var age = 20;          // Dart infers age is an int
  //var name = 'Brendah';  // Dart infers name is a String
  var piValue = 3.14;    // Dart infers piValue is a double
  var isStudent = true;  // Dart infers isStudent is a bool

  //print('$name is $age years old.');

  var numbers = [1, 2, 3, 4];       // List<int>
  var names = ['Alice', 'Bob'];     // List<String>
  var student = {'name': 'John','age':12};   // Map<String, String>

  print(numbers.runtimeType); // List<int>
  print(names.runtimeType);   // List<String>
  print(student.runtimeType); // Map<String, String>

  //Dart is a case-sensitive language. Explain what this means with an example.
String name = "Myrah";
String Name = "Didi";
print(name);
print(Name);

//Create a small program where the user enters two numbers, and the program prints which one is bigger.


// Ask user to enter the first number
  print("Enter the first number: ");
  String? input1 = stdin.readLineSync();  
  int num1 = int.parse(input1!);  


  // Ask user to enter the second number
  print("Enter the second number: ");
  String? input2 = stdin.readLineSync();  
  int num2 = int.parse(input2!);  


  // Compare the two numbers
  if (num1 > num2) {
    print("$num1 is bigger than $num2");
  } else if (num2 > num1) {
    print("$num2 is bigger than $num1");
  } else {
    print("Both numbers are equal");
  }
   
   //Discuss what is meant by Dart’s null safety features and explain the benefits of
//using null safety in Flutter development.
         //soln


  // Here you can either enter te variable or not enter
  // String? Name;
  // String?name = null;
  // !!(NonNull assetion operator)


  //Accept the value to be null
  String? myBothNames;
  print(myBothNames); // This prints null because no value is assigned


  //Assign default value
  myBothNames??= "No names assigned";
  print("My name is: $myBothNames "); //This prints No name provided

  //Asign a value
  myBothNames = "Agnes Musiimenta";
  print("My name is: $myBothNames"); // This prints your names


  // Write a Dart program that asks the user for their name and age, then prints:
//"Hello [name], you are [age] years old!"

stdout.write("Enter your name: ");
String? myNames = stdin.readLineSync();
stdout.write("Enter your age: ");
String? ageInput = stdin.readLineSync();
int myAge = int.tryParse(ageInput ?? '') ?? 0;
print("$myNames is $myAge years old");

// 11.Write a program to calculate the area of a rectangle. The program should ask the
//user for length and width.
stdout.write("Enter length: ");
double length = double.parse(stdin.readLineSync()!);

stdout.write("Enter width: ");
double width = double.parse(stdin.readLineSync()!);

double area = length * width ;

print("The area of a rectangle $area");



}