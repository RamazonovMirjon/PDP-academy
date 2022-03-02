import 'package:flutter/material.dart';
import 'package:pdp/screens/1.dart';
import 'package:pdp/screens/2.dart';
import 'package:pdp/screens/3.dart';
import 'package:pdp/screens/Task4.dart';
import 'package:pdp/screens/home/my_home_page.dart';

class MyRoute {
  Route? onGenarateRout(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: ((context) => const MyHomePage()));
      case '/1':
        return MaterialPageRoute(builder: ((context) => const Page1()));
      case '/2':
        return MaterialPageRoute(builder: ((context) => const Page2()));
      case '/3':
        return MaterialPageRoute(builder: ((context) => const Page3()));
      case '/4':
        return MaterialPageRoute(builder: ((context) => const Task4()));
    }
    return null;
  }
}
