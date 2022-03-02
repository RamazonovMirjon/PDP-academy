import 'package:flutter/material.dart';
import 'package:pdp/core/components/them_comp.dart';
import 'package:pdp/routes/my_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramazonov',
      debugShowCheckedModeBanner: false,
      theme: ThemeComp.materialTheme,
      onGenerateRoute: _myRoute.onGenarateRout,
      initialRoute: "/",
    );
  }
}
