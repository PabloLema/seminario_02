import 'package:flutter/material.dart';
import 'package:seminario_02/src/pages/alerts.dart';
import 'package:seminario_02/src/pages/cards.dart';
import 'package:seminario_02/src/pages/home.dart';
import 'package:seminario_02/src/pages/inputs.dart';
import 'package:seminario_02/src/pages/menu/bottom_menu.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'cards': (BuildContext context) => CardsPage(),
    'alerts': (BuildContext context) => AlertsPage(),
    'inputs': (BuildContext context) => InputsPage(),
    'bottom_menu': (BuildContext context) => BottomMenuPage(),
  };
}
