import 'package:flutter/material.dart';

class consoltionD extends StatefulWidget {
  const consoltionD({super.key});

  @override
  State<consoltionD> createState() => _consoltionDState();
}

class _consoltionDState extends State<consoltionD> {
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
              'Consoltution page         ',
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
    );
  }
}
