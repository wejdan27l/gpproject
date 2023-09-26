//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gpproject/screens/appointment.dart';
import 'package:gpproject/screens/homescreen.dart';
import 'package:gpproject/screens/noties.dart';
import 'package:gpproject/tabs.dart';

// access_time_rounded --> for time

class homevisit extends StatefulWidget {
  const homevisit({super.key});

  @override
  State<homevisit> createState() => _homevisitState();
}

class _homevisitState extends State<homevisit> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  List<String> procedure = [
    'Check the baby pulses',
    'Regular injection',
    'Treatments'
  ];

  String? selecteditem = 'Check the baby pulses';

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
        body: SafeArea(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 100,
                width: 300,
              ),
              Padding(
                padding: EdgeInsets.only(right: 280),
                child: Text(
                  'Date:',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              //date
              SizedBox(
                height: 45,
                width: 330,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.only(right: 200)),
                    onPressed: () async {
                      DateTime? newdate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.light(
                                  primary: Color(0xFFFF4B97),
                                  onPrimary: Color.fromARGB(255, 255, 255, 255),
                                  onSurface: Color(0xFFFF4B97),
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    primary: Color(0xFFFF4B97),
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          });
                      if (newdate == null) return;
                      setState(() {
                        date = newdate;
                      });
                    },
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Color(0xFFFF4B97),
                      size: 20,
                    ),
                    label: Text(
                      '${date.day}/${date.month}/${date.year}',
                      style: TextStyle(
                        color: Color(0xFFFF4B97),
                        fontFamily: 'Mali',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              SizedBox(
                height: 25,
              ),

              Padding(
                padding: EdgeInsets.only(right: 280),
                child: Text(
                  'Time:',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),

              //time
              SizedBox(
                width: 330,
                height: 45,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.only(right: 250)),
                  onPressed: () async {
                    TimeOfDay? newtime = await showTimePicker(
                        context: context,
                        initialTime: time,
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: Color(0xFFFF4B97),
                                onPrimary: Color(0xFFFF4B97),
                                onSurface: Color(0xFFFF4B97),
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  primary:
                                      Color(0xFFFF4B97), // button text color
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        });
                    if (newtime == null) return;
                    setState(() {
                      time = newtime;
                    });
                  },
                  icon: Icon(
                    Icons.access_time_rounded,
                    color: Color(0xFFFF4B97),
                    size: 20,
                  ),
                  label: Text(
                    '${time.hour}:${time.minute}',
                    style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'Mali',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Padding(
                padding: EdgeInsets.only(right: 230),
                child: Text(
                  'Procedure:',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              SizedBox(
                width: 330,
                height: 50,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: DropdownButtonFormField<String>(
                      dropdownColor: Colors.white,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Select Procedure',
                        hintStyle: TextStyle(
                          color: Color(0xFFFF4B97),
                          fontFamily: 'Mali',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      items: procedure
                          .map((items) => DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    fontFamily: 'Mali',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF4B97)),
                              )))
                          .toList(),
                      onChanged: (items) =>
                          setState(() => selecteditem = items)),
                ),
              ),

              SizedBox(
                height: 80,
              ),

              Padding(
                padding: EdgeInsets.all(40),
                child: GestureDetector(
                  onTap: oppenmapsscreen,
                  child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF4B97),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Select',
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

  void oppenmapsscreen() {
    Navigator.of(context).pushReplacementNamed('map');
  }
}
