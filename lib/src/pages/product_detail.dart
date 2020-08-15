import 'package:flutter/material.dart';
import 'package:seminario_02/src/utils/globals.dart' as utils;

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({Key key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  dynamic _product;
  @override
  Widget build(BuildContext context) {
    _product = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            _appBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                _header(),
                _title(_product['title']),
                _descriptionPost(_product['description'])
              ]),
            ),
          ],
        )
        // appBar: AppBar(
        //   title: Text('Detalle'),
        // ),
        // body: Hero(
        //   tag: 'detail',
        //   child: FadeInImage(
        //     fit: BoxFit.cover,
        //     placeholder: AssetImage('assets/loading-animation.gif'),
        //     image: NetworkImage(
        //         'https://cnet2.cbsistatic.com/img/vbaEI3QxmYewrB7lzNkydFyHAVw=/940x0/2019/01/07/74dff4c7-23e1-4b75-aa58-3dbd171bba68/samsung-laptop-notebook-9-pro-ces-2019-0969.jpg'),
        //   ),
        // ),
        );
  }

  Widget _appBar() {
    return SliverAppBar(
      // elevation: 2.0,
      backgroundColor: utils.primaryColor(),
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('Title 1'),
        background: Hero(
          tag: _product['_id'],
          child: FadeInImage(
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/loading-animation.gif'),
            image: NetworkImage('${utils.url}/img/product/${_product['img']}'),
          ),
        ),
      ),
    );
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
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
                '${utils.url}/img/user/${_product['user']['img']}'),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_product['user']['name'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 2),
                  Text(_product['user']['email']),
                  Text(_product['date']),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _title(dynamic title) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: [
            Icon(Icons.attach_file),
            Flexible(
              child: Text(title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ],
        ));
  }

  Widget _descriptionPost(dynamic description) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Text(description,
          textAlign: TextAlign.justify, style: TextStyle(fontSize: 18)),
    );
  }
}
