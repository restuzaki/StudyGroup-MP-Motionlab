import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_motion/controller/cart_controller.dart';

void main() {
  runApp(const MyCart());
}

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                Icons.chevron_left_outlined,
                size: 33,
              ),
            ),
          ),
          leadingWidth: 31,
          title: Center(
            child: const Text("My Cart"),
          ),
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.29),
                    image: DecorationImage(
                      image: AssetImage("assets/images/a.png"),
                    ),
                  ),
                ),
                title: const Text(
                  "Mi Band 8 Pro - Brand New",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                subtitle: Text(
                  "\$${cartController.totalPrice.value.toStringAsFixed(2)}",
                  style: TextStyle(color: Color(0xff00623B)),
                ),
                trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff00623B)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: cartController.quantityIncrement,
                        icon: Icon(Icons.add),
                        color: Color(0xff00623B),
                      ),
                      Text(
                        "${cartController.quantity.value}",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: cartController.quantityDecrement,
                        icon: Icon(Icons.remove),
                        color: Color(0xff00623B),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/baju.png"),
                title: const Text("Lycra Men’s shirt"),
                subtitle: Text(
                  '\$${cartController.totalPrice1.value.toStringAsFixed(2)}',
                  style: TextStyle(color: Color(0xff00623B)),
                ),
                trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff00623B)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: cartController.quantityIncrement1,
                        icon: Icon(Icons.add),
                        color: Color(0xff00623B),
                      ),
                      Text(
                        "${cartController.quantity1.value}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: cartController.quantityDecrement1,
                        icon: Icon(Icons.remove),
                        color: Color(0xff00623B),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(23),
          child: GestureDetector(
            onTap: () => Get.toNamed('/transaksi'),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff00623B),
              ),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
