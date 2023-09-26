import 'package:flutter/material.dart';
import 'package:gpproject/doctor/addarticals.dart';
import 'package:gpproject/doctor/addarticals.dart';

class homeD extends StatefulWidget {
  const homeD({super.key});

  State<homeD> createState() => _homeDState();
}

class _homeDState extends State<homeD> {
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
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: 108,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Dr.Mohammed  \nLearn about the foods you should avoid it in your pregnancy !',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 108,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Dr.Mohammed  \nLearn about the first month in your pregnancy journey !',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 108,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Dr.Mohammed  \nLearn about your body in pregnancy !',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 270, bottom: 700),
            child: IconButton(
              //padding: EdgeInsets.only(left: padding),
              icon: Icon(
                Icons.add_outlined,
                color: Color(0xFFFF4B97),
                size: 40,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addarticals()));
              },
            ),
          ),
        ])));
  }
}
