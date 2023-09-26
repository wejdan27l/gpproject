import 'package:flutter/material.dart';

//contact_support_outlined
//error_outline
//exit_to_app_rounded
//forum_outlined
//help_outline
//logout_rounded
//task_alt_rounded عند اكتمال الطلب

class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          color: Color(0xFFFF4B97),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.forum_outlined,
            size: 30,
            color: Color(0xFFFF4B97),
          ),
          title: Text(
            'Contact Us',
            style: TextStyle(
                color: Color(0xFFFF4B97),
                fontFamily: 'Mali',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        )
      ]),
    );
  }
}
