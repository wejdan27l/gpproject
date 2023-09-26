import 'package:flutter/material.dart';
import 'package:gpproject/tabs.dart';

class confirmrequest extends StatefulWidget {
  const confirmrequest({super.key});

  @override
  State<confirmrequest> createState() => _confirmrequestState();
}

class _confirmrequestState extends State<confirmrequest> {
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
              'Schedule Home Visit         ',
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
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 150)),
            Text(
              'The request is confirmed \n          successfly.',
              style: TextStyle(
                color: Color(0xFFFF4B97),
                fontFamily: 'Mali',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              padding: EdgeInsets.only(right: 120, bottom: 150),
              icon: Icon(
                Icons.task_alt_rounded,
                color: Color(0xFFFF4B97),
                size: 140,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
            ),
            Text(
              'Thank you!',
              style: TextStyle(
                color: Color(0xFFFF4B97),
                fontFamily: 'Mali',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
