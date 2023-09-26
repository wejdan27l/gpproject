import 'package:flutter/material.dart';
import 'package:gpproject/doctor/homeD.dart';
import 'package:gpproject/doctor/tabsD.dart';

DateTime date = DateTime.now();
TimeOfDay time = TimeOfDay.now();
String? doctorname;
String? articalcontext;

class addarticals extends StatefulWidget {
  const addarticals({super.key});

  @override
  State<addarticals> createState() => _addarticalsState();
}

class _addarticalsState extends State<addarticals> {
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
                  context, MaterialPageRoute(builder: (context) => tabsD()));
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: Text(
                'Articales page            ',
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
          child: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 25,
                  width: 300,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 280),
                  child: Text(
                    'Name:',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        onChanged: (value) {
                          doctorname = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '  Name',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 290),
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
                  width: 340,
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
                                    onPrimary:
                                        Color.fromARGB(255, 255, 255, 255),
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
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.only(right: 290),
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
                  width: 340,
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
                  height: 10,
                ),

                Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'Articale content:',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        onChanged: (value) {
                          articalcontext = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '  Content',
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: EdgeInsets.all(40),
                  child: GestureDetector(
                    onTap: oppenhomeDoctorscreen,
                    child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF4B97),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'publish',
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
          ),
        ));
  }

  void oppenhomeDoctorscreen() {
    Navigator.of(context).pushReplacementNamed('homedoctor');
  }
}
