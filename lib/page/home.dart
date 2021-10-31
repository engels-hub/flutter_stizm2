import 'package:flutter/material.dart';
import 'package:stizm2/page/students.dart';
import 'package:stizm2/page/teachers.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Students(),
    Teachers(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child:_pages.elementAt(_selectedIndex),
      ),
      //_pages.elementAt(_selectedIndex)
      bottomNavigationBar: Container(
      decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
      topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      boxShadow: [
      BoxShadow(color: Colors.black45, spreadRadius: 2, blurRadius: 3),
      ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),

          ),
          child: BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Skolēniem',
              backgroundColor: Color.fromARGB(255, 0, 0, 80),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Skolotājiem',
              backgroundColor: Color.fromARGB(255, 0, 0, 80),
            ),
          ],
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.shifting,

          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}



