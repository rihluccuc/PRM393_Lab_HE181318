import 'dart:async';
import 'Product.dart';

//1.2
class Productrepository {
  List<Product> _products = [];

  StreamController<Product> _controller = StreamController<Product>.broadcast();

  Future<List<Product>> getAll() async {
    await Future.delayed(Duration(seconds: 1));
    return _products;
  }

  //1.3
  Stream<Product> liveAdded() {
    return _controller.stream;
  }

  void addProduct(Product product) {
    _products.add(product);
    _controller.add(product);
  }

}
