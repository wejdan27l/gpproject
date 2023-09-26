import 'package:flutter/material.dart';
import 'package:gpproject/screens/appointment.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 211, 211),
        leading: new Icon(
          Icons.menu,
          color: Color(0xFFFF4B97),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Text(
              'Home Page              ',
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
      backgroundColor: Color(0xFFfdebeb),
      body: Column(
        children: [
          Container(
            child: Text(
              'Dr.Mohammed  \nLearn about the foods you should avoid it in your pregnancy !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 100,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
          ),
          Container(
            child: Text(
              'Dr.Sara  \nLearn about the first month in your pregnancy journey !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 100,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
          ),
          Container(
            child: Text(
              'Dr.Noura  \nLearn about your body in pregnancy !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 100,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
          ),
          Container(
            child: Text(
              'Dr.Khalid  \nLearn about how can you manage depression during pregnancy !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 100,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
