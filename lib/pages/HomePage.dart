import 'package:ecommrece_app/models/cars_model.dart';
import 'package:ecommrece_app/pages/my_cart.dart';
import 'package:ecommrece_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {

  final List<Widget> _pages = <Widget>[
    ShopPage(),
    MyCart(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      appBar: _appBar(),
      drawer: _drawer(),
        //GNavigation
        bottomNavigationBar: _buildGNav(),
        //
      body: _pages[_selectedIndex],


    );
  }

  GNav _buildGNav() {
    return GNav(
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          // rippleColor: Colors.grey, // tab button ripple color when pressed
          // hoverColor: Colors.grey, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 10,
          tabActiveBorder: null, // tab button border
          tabBorder: null,
          backgroundColor: Colors.transparent,
          mainAxisAlignment: MainAxisAlignment.center,// tab button border
          //tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          //curve: Curves.easeOutExpo, // tab animation curves
          //duration: Duration(milliseconds: 900), // tab animation duration
          //gap: 8, // the tab button gap between icon and text
          color: Colors.grey.shade400, // unselected icon color
          activeColor: Colors.grey.shade700, // selected icon and text color
          iconSize: 25, // tab button icon size
          tabBackgroundColor: Colors.white, // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ]
      );
  }

  Drawer _drawer() {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              DrawerHeader(child: SvgPicture.asset('assets/icons/ford_logo.svg',
                color: Colors.white,
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('Home',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(Icons.info,color: Colors.white,),
                  title: Text('About',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: (){
                    SystemNavigator.pop();
                  },
                  child: ListTile(
                    leading: Icon(Icons.logout,color: Colors.white,),
                    title: Text('Logout',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              )
            ],
          )
          //other pages
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Builder(
          builder: (context) {
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            },
                icon: Icon(Icons.menu));
          }
        ),
      )
    );
  }
}
