import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_motion/controller/cart_controller.dart';
import 'package:project_motion/pages/Home.dart';
import 'package:project_motion/pages/cart.dart';
import 'package:project_motion/pages/detail_product.dart';
import 'package:project_motion/pages/login.dart';
import 'package:project_motion/pages/register.dart';
import 'package:project_motion/pages/transaksi.dart';
import 'package:project_motion/pages/watch.dart';

void main() {
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            getPages: [
              GetPage(name: '/', page: () => MyLogin()),
              GetPage(name: '/home', page: () => MyHome()),
              GetPage(name: '/watch', page: () => const myWatch()),
              GetPage(name: '/register', page: () => MyRegister()),
              GetPage(name: '/cart', page: () => MyCart()),
              GetPage(name: '/transaksi', page: () => MyTransaksi()),
              GetPage(name: '/detail', page: () => myDetail()),
            ],
          );
        });
  }
}
