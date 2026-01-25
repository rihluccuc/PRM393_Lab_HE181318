import 'dart:async';
import 'package:lab3/ex5/Settings.dart';
import 'ex1/Product.dart';
import 'ex1/ProductRepository.dart';
import 'ex2/User.dart';

void main() async {
  //ex1:
  //1.4
  print("Excercise 1:");
  Productrepository repo = Productrepository();
  repo.liveAdded().listen((product) {
    print('Live added: $product');
  });

  // them product
  repo.addProduct(Product(id: 1, name: 'Laptop', price: 1200));
  repo.addProduct(Product(id: 2, name: 'Mouse', price: 25));

  // lay du lieu ra 1 lan duy nhat
  print('Loading all products...');
  final products = await repo.getAll();
  print('All products:');
  products.forEach(print);

  //ex2
  //2.4
  print("excercise 2: ");
  User user = User();
  List<User> users = await user.fetchUsers();
  users.forEach((user) => print(user));

  //ex3
  //3.1 3.2
  print("Excercise 3:");

  scheduleMicrotask(() {
    print("Microtask 1");
  });

  Future(() {
    print("Excercise 3: Future");
  });

  Future(() {
    print("Event 1");
  });

  scheduleMicrotask(() {
    print("Microtask 2");
  });

  Future(() {
    print("Event 2");
  });
  //3.3 muc do uu tien la microtask > future, microtask duoc uu tien con future thi co the doi

  //ex4
  print("Excercise 4: ");
  //4.2
  numbers().map((n) => n * n).listen((value) => print("$value (square)"));
  //4.3
  numbers().where((n) => n % 2 == 0).listen((value) => print("$value (even)"));

  //ex5
  //5.3
  var a = Settings();
  var b = Settings();
  Future(() {
    print("Excercise 5: ");
    print(identical(a, b));
  });
}

//4.1
Stream<int> numbers() async* {
  for (int i = 1; i < 6; i++) {
    yield i;
  }
}
