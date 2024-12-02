import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/menubar.png",
                      fit: BoxFit.cover,
                      width: 20,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.contain,
                      width: 47,
                      height: 47,
                    ),
                    Image.asset(
                      "assets/images/bag.png",
                      width: 23,
                      height: 23,
                    ),
                  ],
                ),
                SizedBox(
                  height: 29,
                ),
                Text(
                  "Our way of loving ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Inter",
                    color: Colors.black,
                  ),
                ),
                Text(
                  "you back",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Inter",
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.search_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26.5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.green;
                            }
                            return Colors.white;
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            }
                            return Colors.grey;
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                          ),
                        ),
                        child: Text("All"),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.green;
                            }
                            return Colors.white;
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            }
                            return Colors.grey;
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                          ),
                        ),
                        child: Text("Watch"),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.green;
                            }
                            return Colors.white;
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            }
                            return Colors.grey;
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                          ),
                        ),
                        child: Text("Shirt"),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.green;
                            }
                            return Colors.white;
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            }
                            return Colors.grey;
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5),
                            ),
                          ),
                        ),
                        child: Text(
                          "Shoes",
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our Best Seller",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 120,
                              height: 170,
                              color: Colors.blue,
                              child: Center(
                                child: Image.asset(
                                  "assets/images/a.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
