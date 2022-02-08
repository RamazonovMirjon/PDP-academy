import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
      child: Column(
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
              margin: const EdgeInsets.all(9),
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
            flex: 7,
            child: Container(),
          ),
        ],
      ),
    ),
  );
}
