import 'package:flutter/material.dart';
import 'package:gpproject/screens/homevisit.dart';

class map extends StatefulWidget {
  const map({super.key});

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homevisit()));
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
                height: 60,
                width: 60,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  'Specify the location:',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: GestureDetector(
                  onTap: oppenconfermsscreen,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF4B97),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Mali',
                          ),
                        ),
                      )),
                ),
              ),
            ]),
          ),
        ));
  }

  void oppenconfermsscreen() {
    Navigator.of(context).pushReplacementNamed('confermhomevist');
  }
}
