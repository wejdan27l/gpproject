import 'package:flutter/material.dart';
import 'package:gpproject/screens/consoltution.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gpproject/tabs.dart';

final _firestore = FirebaseFirestore.instance;

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  final messagetextcontroller = TextEditingController();
  String? messagetext; // this will give us the messages
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
                context, MaterialPageRoute(builder: (context) => consoltion()));
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Text(
              'Online Consultaion         ',
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          messagestreambulder(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(color: Color(0xFFFF4B97), width: 2))),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: messagetextcontroller,
                  onChanged: (value) {
                    messagetext = value;
                  },
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      hintText: 'Write your massages here..',
                      border: InputBorder.none),
                )),
                TextButton(
                    onPressed: () {
                      messagetextcontroller.clear();
                      _firestore.collection('messages').add({
                        'text': messagetext,
                        'sender': singedinuser.email,
                        'time': FieldValue.serverTimestamp(),
                      });
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Color(0xFFFF4B97),
                        fontFamily: 'Mali',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}

class messagestreambulder extends StatelessWidget {
  const messagestreambulder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('messages').orderBy('time').snapshots(),
        builder: (Context, snapshot) {
          List<messageline> messagewidgets = [];

          if (!snapshot.hasData) {
            // add her spinner
          }

          final messages = snapshot.data!.docs.reversed;
          for (var message in messages) {
            final messagetext = message.get('text');
            final messagesender = message.get('sender');
            final currentuser = singedinuser.email;

            final messagewidget = messageline(
              sender: messagesender,
              text: messagetext,
              isMe: currentuser == messagesender,
            );

            messagewidgets.add(messagewidget);
          }

          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              children: messagewidgets,
            ),
          );
        });
  }
}

class messageline extends StatelessWidget {
  const messageline({this.text, this.sender, required this.isMe, super.key});

  final String? sender;
  final String? text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
          Material(
            elevation: 5,
            borderRadius: isMe
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                : BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
            color: isMe ? Color(0xFFFF4B97) : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                '$text',
                style: TextStyle(
                    fontSize: 18, color: isMe ? Colors.white : Colors.black45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
