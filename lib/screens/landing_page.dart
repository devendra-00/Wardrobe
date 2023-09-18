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
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://uhdwallpapers.org/uploads/converted/18/04/11/shadow-portrait-1024x1024_87685-mm-90.jpg'),
              fit: BoxFit.cover,

            ),
            color: Colors.deepPurple,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children:[

              UserAccountsDrawerHeader(accountName: Text('Dabba.0000',style: TextStyle(color: Colors.white,fontSize: 20)),
                  accountEmail: Text('Devendra Kushwaha',style: TextStyle(color: Colors.white,fontSize: 16)),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                          'https://scontent.fbho5-1.fna.fbcdn.net/v/t39.30808-6/277005369_1038391897026177_4383966942311431436_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=yugSJlDZODUAX_el4k7&_nc_ht=scontent.fbho5-1.fna&oh=00_AfC07OrZ1qC7_a-fgbUdh-M9FiZNUVbBsFyLn0U8Bh7x8Q&oe=650CE109',
                          width: 90,
                          height:90,
                          fit: BoxFit.cover,
                      )
                    ),
                  ),

               decoration: BoxDecoration(
                  color: Colors.transparent,
                /* image: DecorationImage(
                    image: NetworkImage(
                        'https://images3.alphacoders.com/103/1033318.jpg'),
                    fit: BoxFit.cover,

                  ), */
                ),

              ),
              ListTile(
                leading: Icon(Icons.favorite,color: Colors.white),
                title: Text('Favourites',style: TextStyle(color: Colors.white,fontSize: 20)),
                onTap: ()=>print('fav'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.people,color: Colors.white),
                title: Text('Friends',style: TextStyle(color: Colors.white,fontSize: 20)),
                onTap: ()=>print('fav'),
              ),
              ListTile(
                leading: Icon(Icons.notifications,
                color: Colors.white,
                ),
                title: Text('Notifications',style: TextStyle(color: Colors.white,fontSize: 20)),
                trailing: ClipOval(
                  child: Container(
                    color: Colors.redAccent,
                    width: 20,
                    height: 20,
                    child: Center(child: Text('69',style: TextStyle(color: Colors.white,fontSize: 12),)),
                  ),
                ),
                onTap: ()=>print('fav'),
              ),
              ListTile(
                leading: Icon(Icons.share,color: Colors.white),
                title: Text('share',style: TextStyle(color: Colors.white,fontSize: 20)),
                onTap: ()=>print('fav'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.white),
                title: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20)),
                onTap: ()=>print('fav'),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app,color: Colors.white),
                  title: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 20)),
                  onTap: ()=>print('fav'),
                ),
              ),


            ],
          ),
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


