import 'package:flutter/material.dart';
import 'package:seminario_02/src/pages/alerts.dart';
import 'package:seminario_02/src/pages/cards.dart';
import 'package:seminario_02/src/pages/home.dart';
import 'package:seminario_02/src/pages/inputs.dart';
import 'package:seminario_02/src/pages/login.dart';
import 'package:seminario_02/src/pages/menu/bottom_menu.dart';
import 'package:seminario_02/src/pages/profile.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'alerts': (BuildContext context) => AlertsPage(),
    'inputs': (BuildContext context) => InputsPage(),
    'bottom_menu': (BuildContext context) => BottomMenuPage(),
    'cards': (BuildContext context) => CardsPage(),
    'profile': (BuildContext context) => ProfilePage(),
    'login': (BuildContext context) => LoginPage(),
  };
}
