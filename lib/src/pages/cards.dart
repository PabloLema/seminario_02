import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(title: Text('Tarjetas')),
          body: ListView(
            // physics: BouncingScrollPhysics(),
            children: [
              _body(),
              SizedBox(height: 10),
              _body(),
              SizedBox(height: 100),
              Container(
                height: 100,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 20,
                          offset: Offset(0, 5))
                    ]),
              ),
              SizedBox(height: 100),
              _body(),
              SizedBox(height: 10),
              _body(),
              SizedBox(height: 10),
              _body(),
              SizedBox(height: 10),
            ],
          ),
          backgroundColor: Colors.grey[200]),
    );
  }

  Widget _body() {
    return Column(
        children: [_header(), _title(), _imgPost(), _descriptionPost()]);
  }

  Widget _header() {
    return Container(
      // color: Colors.white,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black,
            backgroundImage:
                NetworkImage('https://www.w3schools.com/howto/img_avatar.png'),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 2),
                  Text('plema@ups.edu.ec'),
                  Text('11/08/2020'),
                ],
              ),
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
            Flexible(
              child: Text('Titulos',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ],
        ));
  }

  Widget _imgPost() {
    return Container(
      height: 200,
      width: double.infinity,
      child: FadeInImage(
        fit: BoxFit.cover,
        placeholder: AssetImage('assets/loading-animation.gif'),
        image: NetworkImage(
            'https://cnet2.cbsistatic.com/img/vbaEI3QxmYewrB7lzNkydFyHAVw=/940x0/2019/01/07/74dff4c7-23e1-4b75-aa58-3dbd171bba68/samsung-laptop-notebook-9-pro-ces-2019-0969.jpg'),
      ),
    );
  }

  Widget _descriptionPost() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Text(
          'Ut officia excepteur excepteur nisi nulla commodo ut sint. Ut commodo labore dolore proident proident velit est elit ea ex amet enim. Veniam fugiat veniam culpa irure culpa.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 18)),
    );
  }
}
