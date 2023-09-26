import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpproject/screens/homescreen.dart';
import 'package:gpproject/doctor/tabsD.dart';

class logind extends StatefulWidget {
  logind({super.key});

  @override
  State<logind> createState() => _loginState();
}

class _loginState extends State<logind> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

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

                Text('Welcome..',
                    style: TextStyle(
                      color: Color(0xFFFDB5B5),
                      fontFamily: 'pacifico',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),

                const Text('Sign in',
                    style: TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'pacifico',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
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
                          hintText: '  Email',
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
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '  Password',
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
                  height: 20,
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
                            final user = _auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            if (user != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => tabsD()));
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Mali',
                            ),
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not have un account? ',
                      style: TextStyle(
                        color: Color(0xFFFDB5B5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Mali',
                      ),
                    ),
                    GestureDetector(
                      onTap: openSignuDoctorScreen,
                      child: Text(
                        'Sign up now !',
                        style: TextStyle(
                          color: Color(0xFFFF4B97),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Mali',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openSignuDoctorScreen() {
    Navigator.of(context).pushReplacementNamed('signupDoctor');
  }

  void oppentabsscreen() {
    Navigator.of(context).pushReplacementNamed('tabsScreen');
  }
}
