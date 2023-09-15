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
  void _onprofileTapped() {
    setState(() {
      const Drawer(

      );
    });
  }
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      drawer: Drawer(
        width: size.width*0.8,
        elevation: 5,
        shadowColor:Color(0xff38978E) ,
        child: ListView(
          children:[
          ],
        ),
      ),
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
      body: Stack(
        children:[
          pages[_selectedIndex],
          topBar()
          ]
      ),
    );

  }
  topBar(){
    Size size=MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          decoration: BoxDecoration(
          color: Color(0xff38978E),
          borderRadius: BorderRadius.circular(35)
    ),
            height: 50,width: size.width-20,
            child: Align(child:profile(),alignment: Alignment.centerLeft,),
        ),
      ),
    );
  }
  profile(){
    Size size=MediaQuery.of(context).size;
    return InkWell(
        splashColor: Colors.transparent,
        onTap: (){_key.currentState!.openDrawer();},
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
              height: 45,width:45,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:const AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.brown.withOpacity(0.5), BlendMode.softLight)
                ),
                shape: BoxShape.circle,)
          ),
        )
    );
  }
}


