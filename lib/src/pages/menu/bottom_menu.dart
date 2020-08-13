import 'package:flutter/material.dart';
import 'package:seminario_02/src/pages/cards.dart';

class BottomMenuPage extends StatefulWidget {
  BottomMenuPage({Key key}) : super(key: key);

  @override
  _BottomMenuPageState createState() => _BottomMenuPageState();
}

class _BottomMenuPageState extends State<BottomMenuPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages(),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _pages() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        CardsPage(),
        Container(color: Colors.yellow),
      ],
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(_currentIndex,
              duration: Duration(milliseconds: 250), curve: Curves.easeOut);
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Inicio')),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text('Perfil')),
      ],
    );
  }
}
