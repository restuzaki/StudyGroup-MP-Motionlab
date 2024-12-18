import 'package:get/get.dart';

class CartController extends GetxController {
  final quantity = 0.obs;
  final quantity1 = 0.obs;
  final unitPrice = 54.00;
  final unitPrice1 = 12.00;
  final totalPrice = 0.0.obs;
  final totalPrice1 = 0.0.obs;

  void updateTotalPrice() {
    totalPrice.value = quantity.value * unitPrice;
  }

  void updateTotalPrice1() {
    totalPrice1.value = quantity1.value * unitPrice1;
  }

  void quantityIncrement() {
    quantity.value++;
    update();
    updateTotalPrice();
  }

  void quantityDecrement() {
    if (quantity.value > 0) quantity.value--;
    updateTotalPrice();
  }

  void quantityIncrement1() {
    quantity1.value++;
    update();
    updateTotalPrice1();
  }

  void quantityDecrement1() {
    if (quantity1.value > 0) quantity1.value--;
    updateTotalPrice1();
  }
}
