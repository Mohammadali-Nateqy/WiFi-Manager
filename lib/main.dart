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
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: const Center(
            child: Text(
              'Rowzana Company',
            ),
          ),
        ),
        body: Column(
          children: [
            MyEpandedWidget(
              color: const Color(0xFFD10000),
              child: const Row(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const Image(
              width: 200,
              height: 450,
              image: AssetImage('images/rowzana.png'),
            ),
            MyEpandedWidget(
              color: const Color(0xFFD10000),
            ),
            MyEpandedWidget(
              color: const Color(0xFFD10000),
            ),
            MyEpandedWidget(
              color: const Color(0xFFD10000),
            ),
          ],
        ),
      ),
    );
  }
}

class MyEpandedWidget extends StatelessWidget {
  MyEpandedWidget({required this.color, this.child});

  Color color;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        margin: const EdgeInsets.all(5),
      ),
    );
  }
}
