import 'package:flutter/material.dart';
import 'package:gpproject/screens/appointment.dart';
import 'package:gpproject/tabs.dart';

class consoltion extends StatefulWidget {
  const consoltion({super.key});

  @override
  State<consoltion> createState() => _consoltionState();
}

class _consoltionState extends State<consoltion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfdebeb),
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
                'Online Consultaion         ',
                style: TextStyle(
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Image.asset(
                'images/logo1.png',
                //fit: BoxFit.contain,
                height: 60,
                width: 60,
              ),
            ],
          ),
        ),
        body: Center(
          child: SizedBox(
            height: 45,
            width: 300,
            child: ElevatedButton(
              child: GestureDetector(
                onTap: oppenchatscreen,
                child: Text(
                  'Talk with doctor now!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Mali',
                  ),
                ),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF4B97),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ));
  }

  void oppenchatscreen() {
    Navigator.of(context).pushReplacementNamed('chat');
  }
}
