import 'package:flutter/material.dart';
import 'package:seminario_02/src/pages/home.dart';
import 'package:seminario_02/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seminario 02',
        routes: getApplicationRoutes(),
        initialRoute: 'bottom_menu',
        theme: ThemeData(
          primaryColor: Colors.indigo,
          accentColor: Colors.pink,
        ));
  }
}
