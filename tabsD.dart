import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpproject/doctor/consultionsD.dart';
import 'package:gpproject/doctor/homeD.dart';
import 'package:gpproject/doctor/loginD.dart';
import 'package:gpproject/screens/consoltution.dart';
import 'package:gpproject/screens/noties.dart';

class tabsD extends StatefulWidget {
  const tabsD({super.key});

  @override
  State<tabsD> createState() => _tabsState();
}

late User singedinuser;

class _tabsState extends State<tabsD> {
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

  final List<Widget> _screens = [
    homeD(),
    consoltionD(),
  ];

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
                Icons.logout_rounded,
                size: 30,
                color: Color(0xFFFF4B97),
              ),
              title: GestureDetector(
                onTap: () {
                  _auth.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => logind()));
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
              label: 'Consultiont',
            )
          ],
        ));
  }
}
