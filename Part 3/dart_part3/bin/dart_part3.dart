import 'dart:io';

import 'package:test/test.dart';

void main() {
  sum();
  sumParams(9, 10);
  int sumReturnRes = sumReturn(90, 7);
  print(sumReturnRes);
  int sumReq = sumReqParams(firstNumber: 90, secondNumber: 10);
  int sumOptional = sumOptionalParams(firstNumber: 90, secondNumber: 2);
  int sumDefault = sumDefaultParams(firstNumber: 80, secondNumber: 7);
  print(
      "Sum for Required Parameters Function = ${sumReq}\nSum for Optional Parameters Function = ${sumOptional}\nSum for Default Parameters Function = ${sumDefault}\n");
  passFunction(4, 9, sumParams);

  // Anonymous Functions
  passFunction(90, 9, (int f, int s) {
    print("Function sum is ${f + s}");
  });

  //Future Function
  sumFuture(90, 9);
  print("This statment comes after the future function");

  printFuture();
}

void sum() {
  print(1 + 9);
}

void sumParams(int a, int b) {
  print("${a + b}");
}

int sumReturn(int a, int b) {
  return a + b;
}

// Required Parameters
int sumReqParams({required int firstNumber, required int secondNumber}) {
  return firstNumber + secondNumber;
}

// Optional Parameters
int sumOptionalParams(
    {required int firstNumber, required int secondNumber, int? thirdNumber}) {
  if (thirdNumber == null) {
    thirdNumber = 0;
  }
  return firstNumber + secondNumber + thirdNumber;
}

//Default Parameters
int sumDefaultParams(
    {required int firstNumber,
    required int secondNumber,
    int thirdNumber = 0}) {
  return firstNumber + secondNumber + thirdNumber;
}

//Passing a function into another function
void passFunction(int a, int b, void Function(int, int) customFunction) {
  customFunction(a, b);
}

// Future Async functions
Future<void> sumFuture(int firstNumber, int secondNumber) async {
  await Future.delayed(Duration(seconds: 3));
  print("From the future function, sum = ${firstNumber + secondNumber}");
}

Future<void> printFuture() async {
  print("In printFuture Function, before sumFuture()");
  await sumFuture(10, 30);
  print("In printFuture Function, after sumFuture()");
}
