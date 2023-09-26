import 'package:flutter/material.dart';
import 'package:gpproject/screens/consoltution.dart';
import 'package:gpproject/screens/homevisit.dart';
import 'package:gpproject/tabs.dart';

class appointment extends StatefulWidget {
  const appointment({super.key});

  @override
  State<appointment> createState() => _appointmentState();
}

class _appointmentState extends State<appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfdebeb),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 211, 211),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFFFF4B97),
          ),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Text(
              'Appointment page         ',
              style: TextStyle(
                color: Color(0xFFFF4B97),
                fontFamily: 'Mali',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
            Image.asset(
              'images/logo1.png',
              height: 60,
              width: 60,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
              ),
            ),
            Text('Appointment options',
                style: TextStyle(
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 65,
            ),
            SizedBox(
              height: 45,
              width: 300,
              child: ElevatedButton(
                child: Text(
                  'Online Consultaion',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Mali',
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => consoltion()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF4B97),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                child: Text(
                  'Schedule a home visit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Mali',
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homevisit()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF4B97),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
