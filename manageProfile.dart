import 'package:flutter/material.dart';

class manageProfile extends StatefulWidget {
  const manageProfile({super.key});

  @override
  State<manageProfile> createState() => _manageProfileState();
}

class _manageProfileState extends State<manageProfile> {
  bool showPassword = false;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfdebeb),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 211, 211),
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
                  child: Text(
                'Manage Profile         ',
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
                child: SingleChildScrollView(
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              //phonenumber
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phone number ',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //passord
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //sign in booton
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4B97),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Mali',
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
            ])))));
  }

  void opentabsScreen() {
    Navigator.of(context).pushReplacementNamed('tabsScreen');
  }
}
