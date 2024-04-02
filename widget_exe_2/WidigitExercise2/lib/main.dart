// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.red),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.cabin),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shoping Cart",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 16, 41, 61),
                                fontSize: 18)),
                        Text(
                          "varify your Quntity and check out",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ReusableCard(),
                SizedBox(
                  height: 25,
                ),
                ReusableCard()
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Positioned(
                left: 0,
                bottom: 10,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("SubTotal"), Text("\$50.00")],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("TAX(10.%)"), Text("\$6.00")],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Checkout",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/image1.jpg"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [Text("Caloose"), Text("\$100.00")],
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.add_circle),
                Text("2.0"),
                Icon(Icons.minimize)
              ],
            )
          ],
        ));
  }
}
