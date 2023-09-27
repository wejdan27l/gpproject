import 'package:flutter/material.dart';

class manageTask extends StatefulWidget {
  const manageTask({super.key});

  @override
  State<manageTask> createState() => _manageTaskState();
}

class _manageTaskState extends State<manageTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfdebeb),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 211, 211),
          leading: IconButton(
            //padding: EdgeInsets.only(left: padding),
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFF4B97),
            ),
            onPressed: opentabsScreen,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: const Text(
                'Manage Task           ',
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
        body: SafeArea(
            child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 130),
            child: Align(
              alignment: Alignment.topCenter,
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
              ),
              TextButton(
                  onPressed: null,
                  child: Icon(
                    Icons.paste_rounded,
                    size: 50,
                    color: Color(0xFFFF4B97),
                  )),
              GestureDetector(
                onTap: null,
                child: Text('Manage appointment',
                    style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'Mali',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Text('\n'),
            Container(
              padding: EdgeInsets.only(left: 10),
            ),
            TextButton(
                onPressed: null,
                child: Icon(Icons.alarm_add_rounded,
                    size: 50, color: Color(0xFFFF4B97))),
            GestureDetector(
              onTap: manageReminderScreen,
              child: Text('Manage reminder',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ]),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Container(
              padding: EdgeInsets.only(left: 10),
            ),
            TextButton(
                onPressed: null,
                child: Icon(
                  Icons.pregnant_woman_rounded,
                  size: 50,
                  color: Color(0xFFFF4B97),
                )),
            Text('\n'),
            Text('Manage weak-by-weak \ntrack',
                style: TextStyle(
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ])
        ])));
  }

  void opentabsScreen() {
    Navigator.of(context).pushReplacementNamed('tabsScreen');
  }

  void manageReminderScreen() {
    Navigator.of(context).pushReplacementNamed('manageReminderScreen');
  }
}
