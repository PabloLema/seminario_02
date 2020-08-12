import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tarjetas')),
        body: ListView(
          children: [_body()],
        ));
  }

  Widget _body() {
    return Column(children: [_header(), _title()]);
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black,
            backgroundImage:
                NetworkImage('https://www.w3schools.com/howto/img_avatar.png'),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Text('Name User',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Email User'),
                Text('11/08/2020'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: [
            Icon(Icons.attach_file),
            Text('Titulo'),
          ],
        ));
  }
}
