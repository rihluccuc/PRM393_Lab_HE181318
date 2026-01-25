import 'package:flutter/material.dart';

import 'Car.dart';
import 'ElectricCar.dart';

//1.1
void main() async {
  //1.2
  int age = 20;
  double score = 1.75;
  String name = 'Dat';
  bool status = true;

  //2.1
  List<double> list = [1, 2, 3, 4, 5, 6, 7];
  var a = list[0];
  var b = list[1];
  var c = list[2];

  //2.3
  Map<String, double> scores = {"Math": 8, "English": 4, "Philosophy": 9};
  Set<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  //1.3
  print('Exercise 1:');
  print("Name: $name ");
  print("Age: $age ");
  print("Score: $score ");
  print("Status: $status ");
  print("");

  print('Exercise 2:');
  //2.2
  print('a + b + c = ${a + b + c})');
  print('a - b - c = ${a - b - c})');
  print('a x b x c = ${a * b * c})');
  print('a : b : c = ${a / b / c})');
  print('a == b: ${a == b}');
  //2.4
  print('Numbers using index ${numbers.toList()[5]}');
  print('Numbers before adjust: $numbers');
  numbers.add(11);
  numbers.remove(1);
  print('Numbers after adjust: $numbers');

  print('All Scores before adjust: $scores');
  scores.remove("Math");
  scores.addAll({"Literature": 3});
  print('All Scores before adjust: $scores');

  //3.1
  print('Excercise 3');
  if (score < 5) {
    print('Dưới trung bình');
  } else {
    print('Trên trung bình');
  }
  // 3.2
  int day = 1;
  switch (day) {
    case 1:
      print('Today is Monday');
      break;
    case 2:
      print('Today is Tuesday');
      break;
    case 3:
      print('Today is Wednesday');
      break;
    case 4:
      print('Today is Thursday');
      break;
    case 5:
      print('Today is Friday');
      break;
    case 6:
      print('Today is Saturday');
      break;
    case 7:
      print('Today is Sunday');
      break;
  }

  //3.3
  List<int> nums = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];
  var num;
  //for
  for (int i = 0; i < nums.length; i++) {
    print(nums[i]);
  }
  //for in
  for (num in nums) {
    print(num);
  }
  //for each
  nums.forEach((num) => print(num));

  //3.4
  //normal
  void normalSyntax(int num) {
    print(num);
  }

  normalSyntax(10);

  //arrow
  void arrowSyntax(int num) => print(num);
  arrowSyntax(20);

  //4.4
  Car car = Car('Mazda');
  car.newest();
  ElectricCar electricCar = ElectricCar('Vin');
  electricCar.newest();

  //5.1 print
  String result = await asyncFunction();
  print(result);

  //5.3 print
  nullSafety();

  //5.4 print
  listenSteam();
}

//5.1 function
Future<String> asyncFunction() async {
  //5.2
  await Future.delayed(Duration(seconds: 2));
  return 'Data da load xong';
}

//5.3 function
void nullSafety() {
  //co the null
  String? name;

  //neu null thi dung mac dinh
  String ifName = name ?? 'Michael Jordan';
  print(ifName);

  name = 'Dat';
  //chac chan k null
  print(name!);
}

//5.4 function
Stream<int> numberSteam() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void listenSteam() {
  numberSteam().listen((value) {
    print('Steam value: $value');
  });
}
