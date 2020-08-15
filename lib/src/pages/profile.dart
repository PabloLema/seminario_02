import 'package:flutter/material.dart';
import 'package:seminario_02/src/providers/preferences.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Preferences _preferences = Preferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
          child: FlatButton(
              child: Text('Cerrar Sesión'),
              onPressed: () {
                _preferences.token = '';
                Navigator.popAndPushNamed(context, 'login');
              })),
    );
  }
}
