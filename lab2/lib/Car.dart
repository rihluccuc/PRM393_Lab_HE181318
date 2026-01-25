//4.1
class Car {
  String? model;

  //construct
  Car(this.model);

  //4.2
  Car.origin(this.model);

  void newest() {
    print("$model is not a electric car");
  }
}

