import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpproject/tabs.dart';

class signupD extends StatefulWidget {
  const signupD({super.key});

  @override
  State<signupD> createState() => _signupState();
}

class _signupState extends State<signupD> {
  final _auth = FirebaseAuth.instance;
  late String name;
  late String email;
  late String password;
  late int phone;
  late int ID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFfdebeb),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                  ),
                ),
                Text('Sign up',
                    style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'pacifico',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                //name
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        onChanged: (value) {
                          name = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFDB5B5), width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFF4B97), width: 3)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //idnumber
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        onChanged: (value) {
                          ID = value as int;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' ID number ',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFDB5B5), width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFF4B97), width: 3)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //phonenumber
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        onChanged: (value) {
                          phone = value as int;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Phone number ',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFDB5B5), width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFF4B97), width: 3)),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Email',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFDB5B5), width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFF4B97), width: 3)),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        obscureText: true,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Password',
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFDB5B5), width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: Color(0xFFFF4B97), width: 3)),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4B97),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          final newuser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => tabs()));
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Mali',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'have an account? ',
                      style: TextStyle(
                        color: Color(0xFFFDB5B5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Mali',
                      ),
                    ),
                    GestureDetector(
                      onTap: openSignindoctorScreen,
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xFFFF4B97),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Mali',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )));
  }

  void openSignindoctorScreen() {
    Navigator.of(context).pushReplacementNamed('signindoctor');
  }
}
