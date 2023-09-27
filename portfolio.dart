import 'package:flutter/material.dart';

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfdebeb),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 211, 211),
          leading: new Icon(
            Icons.menu,
            color: const Color(0xFFFF4B97),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: const Text(
                'Portofolio page         ',
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
                    Icons.manage_accounts_outlined,
                    size: 50,
                    color: Color(0xFFFF4B97),
                  )),
              GestureDetector(
                onTap: openManageprofileScreen,
                child: Text('Manage profile',
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
                child: Icon(Icons.task_outlined,
                    size: 50, color: Color(0xFFFF4B97))),
            GestureDetector(
              onTap: openManagetaskScreen,
              child: Text('Manage task',
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
                  Icons.feed_outlined,
                  size: 50,
                  color: Color(0xFFFF4B97),
                )),
            Text('\n'),
            Text('Manage report and \nprescription',
                style: TextStyle(
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ])
        ])));
  }

  void openManageprofileScreen() {
    Navigator.of(context).pushReplacementNamed('ManageProfileScreen');
  }

  void openManagetaskScreen() {
    Navigator.of(context).pushReplacementNamed('ManageTaskScreen');
  }
}
