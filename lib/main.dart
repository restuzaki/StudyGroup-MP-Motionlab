import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_motion/pages/Home.dart';
import 'package:project_motion/pages/cart.dart';
import 'package:project_motion/pages/login.dart';
import 'package:project_motion/pages/register.dart';
import 'package:project_motion/pages/transaksi.dart';
import 'package:project_motion/pages/watch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
