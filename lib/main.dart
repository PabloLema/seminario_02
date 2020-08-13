import 'package:flutter/material.dart';
import 'package:seminario_02/src/routes/routes.dart';
import 'package:seminario_02/src/utils/globals.dart' as utils;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seminario 02',
        routes: getApplicationRoutes(),
        initialRoute: 'login',
        theme: ThemeData(
          // primaryColor: Colors.indigo,
          // accentColor: Colors.pink,
          primaryColor: utils.primaryColor(),
          accentColor: utils.accentColor(),
        ));
  }
}
