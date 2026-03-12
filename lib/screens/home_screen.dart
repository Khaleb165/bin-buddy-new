// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../drawer/dashboard.dart';
import '../drawer/payment_history.dart';
import '../drawer/profile_screen.dart';
import '../drawer/support_center.dart';
import '../navbar_screens/blog_screen.dart';
import '../navbar_screens/map_screen.dart';
import '../navbar_screens/payment_screen.dart';
import '../navbar_screens/request/request_screen.dart';
import 'login_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MapScreen(),
    BlogScreen(),
    PaymentScreen(),
    RequestScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: backgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('BinBuddy'),
        ),
        titleTextStyle: TextStyle(
            color: buttonColor, fontWeight: FontWeight.bold, fontSize: 40),
        titleSpacing: 2,
      ),

      endDrawer: Drawer(
        child: Container(
          color: Colors.transparent,
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: buttonColor,
                  ),
                  child: Center(
                      child: ListTile(
                    title: Text(
                      'Aballey Wilson',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'New York, NY',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.clear,
                          size: 40,
                          color: Colors.white,
                        )),
                  ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentHistoryPage()));
                  },
                  leading: Image.asset(
                    'assets/Subtraction 4.png',
                    scale: 1.7,
                  ),
                  title: Text(
                    'Payment History',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  leading: Image.asset(
                    'assets/Icon awesome-user-alt.png',
                    scale: 1.7,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardPage()));
                  },
                  leading: Image.asset(
                    'assets/Icon material-dashboard.png',
                    scale: 1.7,
                  ),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SupportCenter()));
                  },
                  leading: Image.asset(
                    'assets/Icon material-help-outline.png',
                    scale: 1.7,
                  ),
                  title: Text(
                    'Support Center',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 100,
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'About us',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Privacy',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Terms of Use',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'FAQ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                tileColor: Colors.red.shade50,
                leading: Icon(
                  Icons.logout,
                  size: 27,
                  color: Colors.red[900],
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.red[900]),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        iconSize: 40,
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[400],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: 'blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_outlined),
            label: 'payment',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/mega.png',
              scale: 1.5,
              color: Colors.grey[600],
            ),
            label: 'request',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: buttonColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
