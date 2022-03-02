import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyApp(),
    );
  }
}

Widget bodyApp() {
  return Container(
    margin: const EdgeInsets.all(3),
    color: const Color.fromARGB(255, 18, 92, 153),
    padding: const EdgeInsets.all(10),
    child: Container(
      color: Colors.blue,
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(9),
              height: 50,
              color: Colors.black,
              padding: const EdgeInsets.all(8),
              child: Container(color: Colors.green),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              color: Colors.black,
              padding: const EdgeInsets.all(8),
              child: Container(color: Colors.green),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(9),
              height: 50,
              color: Colors.black,
              padding: const EdgeInsets.all(8),
              child: Container(color: Colors.green),
            ),
          ),
        ],
      ),
    ),
  );
}
