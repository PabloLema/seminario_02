import 'package:flutter/material.dart';
import 'package:seminario_02/src/utils/globals.dart' as utils;

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _sizeHeight;
  double _sizeWidth;
  @override
  Widget build(BuildContext context) {
    _sizeHeight = MediaQuery.of(context).size.height;
    _sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: utils.primaryColor(),
        body: Stack(
          children: [_bottomBody()],
        ),
      ),
    );
  }

  Widget _bottomBody() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
            left: _sizeWidth * 0.0243331, right: _sizeWidth * 0.0243331),
        width: double.infinity,
        height: _sizeHeight * 0.585652,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: _formInputs(),
      ),
    );
  }

  Widget _formInputs() {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 30),
      child: Form(
        child: Column(children: [
          // TextFormField(
          // keyboardType: TextInputType.emailAddress,
          // cursorColor: utils.accentColor(),
          // textCapitalization: TextCapitalization.words,
          // decoration: InputDecoration(
          // border:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          // hintText: 'Correo',
          // labelText: 'Correo',
          // helperText: 'Ingrese Su Correo',
          // suffixIcon: Icon(Icons.email),
          // prefixIcon: Icon(Icons.email),
          // icon: Icon(Icons.email)),
          // ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            // textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
                hintText: 'Correo', prefixIcon: Icon(Icons.email)),
          ),
          SizedBox(height: 30),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            // textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
                hintText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
          ),
          SizedBox(height: 30),
          ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: FlatButton(
              color: utils.primaryColor(),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: Text(
                'ENTRAR',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
