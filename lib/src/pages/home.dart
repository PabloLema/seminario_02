import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ListTile(
              title: Text('Alertas'),
              subtitle: Text('Acceder al ejemplo de las alertas'),
              leading: Icon(
                Icons.add_alert,
                color: Colors.redAccent[200],
              ),
              trailing: Icon(Icons.arrow_forward_ios)),
          Divider(),
          ListTile(
              title: Text('Tarjetas'),
              subtitle: Text('Acceder al ejemplo de las tarjetas'),
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.arrow_forward_ios)),
          Divider(),
          ListTile(
              title: Text('Alertas'),
              subtitle: Text('Acceder al ejemplo de las alertas'),
              leading: Icon(Icons.archive),
              trailing: Icon(Icons.arrow_forward_ios)),
          Divider(),
        ],
      ),
    );
  }
}
