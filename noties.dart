import 'package:flutter/material.dart';

class noties extends StatefulWidget {
  const noties({super.key});

  @override
  State<noties> createState() => _notiesState();
}

class _notiesState extends State<noties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfdebeb),
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
              'Notification page         ',
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
        // leading: Container(
        //   child: Image.asset('images/logo1.png'),
        // ),
      ),
    );
  }
}
