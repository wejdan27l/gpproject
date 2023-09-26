import 'package:flutter/material.dart';
import 'package:gpproject/tabs.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFfdebeb),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 211, 211),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFF4B97),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: Text(
                'About Us                ',
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
        body: Center(
          child: Container(
            child: Text(
                'Qurat Aien is here to helping the pregnant woman step by step in their pregnancy journey, by providing medical responsive online chat consultations by a group of specialized doctors in obstetrics and gynecology, scheduling home visits from nurses, and Providing helpful information and articles about the pregnancy.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 18,
                )),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFFF4B97),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 310,
            width: 350,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
          ),
        ));
  }
}
