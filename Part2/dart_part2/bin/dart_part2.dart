import 'dart:io';

void main() {
  // print onto console
  print("Hello World");

  // Take input from the console
  // Display the input onto the console
  var input1 = stdin.readLineSync();
  print("Hello $input1");

  //Accept two numbers from the user
  //Add them and display the result in the console
  print("Enter two numbers");
  var numInput1 = stdin.readLineSync();
  var numInput2 = stdin.readLineSync();

  var num1 = int.parse(numInput1!);
  var num2 = int.parse(numInput2!);

  print("SUM = ${num1 + num2}");

  // Types of string variables
  // Single Line
  var string1 = 'Sreya Salil';
  //With special charcters
  var string2 = "I'm Sreya Salil";
  //Multiline String
  var string3 = '''Sreya Salil,
  Sreya Salil's Address
  ''';
  print(string1);
  print(string2);
  print(string3);

  // If Statements
  print(
      "Enter a number to check if it is positive, negative or equal to zero:");
  var numForIf = int.parse(stdin.readLineSync()!);
  if (numForIf > 0) {
    print("The input number is positive");
  } else if (numForIf == 0) {
    print("The input number is equal to 0");
  } else {
    print("The input number is negative");
  }

  // For loop
  print("Numbers from 0 to 10");
  for (var i = 0; i <= 10; i++) {
    print(i);
  }

  //Lists
  //List of objects
  var listOfObjects = [20.3, "Sreya", 9, '*'];
  //List of integers
  List<int> listOfIntegers = [45, 74, 19, 56, 38];
  //Display length of list
  print(listOfIntegers.length);
  //list.contains() function
  if (listOfIntegers.contains(45)) {
    print("The list contains 45");
  } else {
    print("The list does not contain 45");
  }
  //list.Add() function
  listOfIntegers.add(18);
  //list.removeAt() function
  listOfIntegers.removeAt(0);
  //list.addAll() function
  var listToAdd = [45, 89, 11];
  listOfIntegers.addAll(listToAdd);
  //Print using list.join() function
  print(listOfIntegers.join("*"));
  //print list
  print(listOfIntegers);

  // Multiple Lists
  List<List<int>> mulList = [
    [9, 12, 7],
    [8, 45, 87]
  ];
  print(mulList[0][1]);

  // Sets
  List<int> numberList = [1, 2, 2, 2, 2, 4, 4, 4, 4, 6, 6, 6, 90];
  Set<int> numberSet = {1, 2, 2, 2, 2, 4, 4, 4, 4, 6, 6, 6, 90};
  print(numberList);
  print(numberSet);

  // Map
  Map<String, Object> employeeDetails = {"name": "Sreya Salil", "age": 22};
  print(employeeDetails);
}
