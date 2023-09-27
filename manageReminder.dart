import 'package:flutter/material.dart';

class manageReminder extends StatefulWidget {
  const manageReminder({super.key});

  @override
  State<manageReminder> createState() => _manageProfileState();
}

class _manageProfileState extends State<manageReminder> {
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
            onPressed: manageTaskScreen,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: Text(
                'Reminder page         ',
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
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '    Reminder List',
                style: TextStyle(
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '0',
                style: TextStyle(
                  color: Color(0xFFFF4B97),
                  fontFamily: 'Mali',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // SizedBox(
            //   height: ,
            // ),
            Flexible(child: BottomContainer()),

            Padding(
              padding: EdgeInsets.only(left: 250, bottom: 50),
              child: IconButton(
                //padding: EdgeInsets.only(left: padding),
                icon: Icon(
                  Icons.add_outlined,
                  color: Color(0xFFFF4B97),
                  size: 40,
                ),
                onPressed: newRemainderScreen,
              ),
            ),
          ],
        ));
  }

  void manageTaskScreen() {
    Navigator.of(context).pushReplacementNamed('ManageTaskScreen');
  }

  void newRemainderScreen() {
    Navigator.of(context).pushReplacementNamed('newReminderScreen');
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //     child: Text(
    //   ' no reminder',
    //   style: TextStyle(
    //     fontFamily: 'Mali',
    //     fontSize: 29,
    //     fontWeight: FontWeight.bold,
    //     color: Color(0xFFFDB5B5),
    //   ),
    // ));

    return GridView.builder(
      padding: EdgeInsets.only(top: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ReminderCard();
      },
    );
  }
}

class ReminderCard extends StatelessWidget {
  const ReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.grey,
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => reminderDetils(),
        //     ));
      },
      child: Container(
        padding: EdgeInsets.only(left: 17, right: 10, top: 1, bottom: 2),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFFFF4B97),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Spacer(),
            // SizedBox(
            //   height: 6,
            // ),
            Text(
              'Paill Name',
              overflow: TextOverflow.fade,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Mali',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const Spacer(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Every 6 hours',
              overflow: TextOverflow.fade,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xFFFDB5B5),
                fontFamily: 'Mali',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Start Time : 10:19',
              overflow: TextOverflow.fade,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xFFFDB5B5),
                fontFamily: 'Mali',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 130,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    openAlertBox(context);
                  },
                  child: Text('Delete',
                      style: TextStyle(
                        color: Color(0xFFFF4B97),
                        fontFamily: 'Mali',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ))),
            )
          ],
        ),
      ),
    );
  }

  openAlertBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
            contentPadding: EdgeInsets.only(top: 12),
            title: Text(
              'Delete This Reminder?',
              style: TextStyle(
                color: Color(0xFFFF4B97),
                fontFamily: 'Mali',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Ok',
                  style: TextStyle(
                    color: Color(0xFFFF4B97),
                    fontFamily: 'Mali',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        });
  }
}
