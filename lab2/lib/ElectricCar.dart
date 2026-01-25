//4.3
import 'Car.dart';

class ElectricCar extends Car {
  ElectricCar(String model) : super.origin(model);

  @override
  void newest() {
    print('but $model is a electric car');
  }
}
