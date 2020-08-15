import 'package:flutter/material.dart';
import 'package:seminario_02/src/providers/preferences.dart';
import 'package:seminario_02/src/routes/routes.dart';
import 'package:seminario_02/src/utils/globals.dart' as utils;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final _preferences = Preferences();
  await _preferences.initPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Preferences _preferences = Preferences();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seminario 02',
        routes: getApplicationRoutes(),
        initialRoute: _preferences.token == '' ? 'login' : 'bottom_menu',
        theme: ThemeData(
          // primaryColor: Colors.indigo,
          // accentColor: Colors.pink,
          primaryColor: utils.primaryColor(),
          accentColor: utils.accentColor(),
        ));
  }
}
