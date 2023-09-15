import 'package:flutter/material.dart';
import 'package:myapp/widgets/home_Page.dart';
import 'package:myapp/widgets/outfits_.dart';
import 'package:myapp/widgets/wish_List.dart';


class landingpage extends StatefulWidget {
  const landingpage({super.key});

  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  int _selectedIndex=0;
  static const List<Widget> pages =[home(),wish(),outfits()];
  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          ],
          currentIndex: _selectedIndex,
          selectedItemColor:const Color(0xff38978E),
          unselectedItemColor: Colors.blueGrey.withOpacity(0.5),
          backgroundColor: Colors.black,
          selectedFontSize: 15,
          onTap: _onItemTapped
      ),
      body: pages[_selectedIndex],

    );
  }
}
