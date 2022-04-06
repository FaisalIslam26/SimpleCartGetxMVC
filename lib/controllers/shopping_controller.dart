import 'package:get/get.dart';
import 'package:getxcartscreen/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          productName: 'First Prod',
          productImage: 'abd',
          productDescription: 'Some description about product',
          price: 20),
      Product(
          id: 2,
          productName: 'Second Prod',
          productImage: 'abd',
          productDescription: 'Some description about product',
          price: 40),
      Product(
          id: 3,
          productName: 'Third Prod',
          productImage: 'abd',
          productDescription: 'Some description about product',
          price: 30)
    ];

    products.value = productResult;
  }
}
