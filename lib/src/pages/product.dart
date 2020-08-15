import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Crear Producto'),
          actions: [
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
            IconButton(icon: Icon(Icons.photo_library), onPressed: () {}),
          ],
        ),
        body: _formProduct());
  }

  Widget _formProduct() {
    return Column(children: []);
  }
}
