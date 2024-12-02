import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chevron_left_rounded,
                    size: 33,
                  ),
                  Text(
                    "Product Detail",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    size: 33,
                    color: Colors.red,
                  ),
                ],
              ),
              Image.asset(
                "assets/images/a.png",
                width: double.infinity,
                height: 401,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Mi Band 8 Pro",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "\$54.00",
                style: TextStyle(fontSize: 18, color: Color(0xff00623B)),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                color: const Color(0xff00623B),
                child: const Center(
                  child: Text(
                    "Add To Bag",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
