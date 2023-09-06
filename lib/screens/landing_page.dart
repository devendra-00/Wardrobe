import 'package:flutter/material.dart';


class landingpage extends StatefulWidget {
  const landingpage({super.key});

  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  int _selectedIndex=0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "HOME",
                backgroundColor: Color(0xff38978E)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: "WISHLIST",
                backgroundColor: Color(0xff38978E)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.propane_tank_outlined),
                label: "OUTFITS",
                backgroundColor: Color(0xff38978E)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "PERSON",
              backgroundColor: Color(0xff38978E),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}


