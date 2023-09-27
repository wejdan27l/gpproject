import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpproject/screens/appointment.dart';
import 'package:gpproject/screens/drawer.dart';
import 'package:gpproject/screens/homescreen.dart';
import 'package:gpproject/screens/login.dart';
import 'package:gpproject/screens/noties.dart';
import 'package:gpproject/screens/portfolio.dart';

class tabs extends StatefulWidget {
  const tabs({super.key});

  @override
  State<tabs> createState() => _tabsState();
}

late User singedinuser;

class _tabsState extends State<tabs> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getcurrentuser();
  }

  void getcurrentuser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        singedinuser = user;
        print(singedinuser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  int _selectedscreenindex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedscreenindex = index;
    });
  }

  final List<Widget> _screens = [homescreen(), appointment(), noties(),portfolio()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFfdebeb),
        drawer: Drawer(
          child: Column(children: [
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              color: Color(0xFFFF4B97),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.forum_outlined,
                size: 30,
                color: Color(0xFFFF4B97),
              ),
              title: GestureDetector(
                onTap: oppenaboutusscreen,
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'Mali',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.error_outline,
                size: 30,
                color: Color(0xFFFF4B97),
              ),
              title: GestureDetector(
                onTap: oppenaboutusscreen,
                child: Text(
                  'About Us',
                  style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'Mali',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_rounded,
                size: 30,
                color: Color(0xFFFF4B97),
              ),
              title: GestureDetector(
                onTap: () {
                  _auth.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'Mali',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ),
        body: _screens[_selectedscreenindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Color.fromARGB(255, 228, 183, 202),
          selectedItemColor: Color(0xFFFF4B97),
          unselectedItemColor: Color(0xFFFF4B97),
          currentIndex: _selectedscreenindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_add),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_outlined),
              label: 'Notices',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list_outlined),
              label: 'portofolio',
            ),
          ],
        ));
  }

  void oppenaboutusscreen() {
    Navigator.of(context).pushReplacementNamed('aboutUs');
  }
}
