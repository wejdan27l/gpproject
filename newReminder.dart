import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class newReminder extends StatefulWidget {
  const newReminder({super.key});

  @override
  State<newReminder> createState() => _newRemainderState();
}

class _newRemainderState extends State<newReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFfdebeb),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 211, 211),
          leading: IconButton(
            //padding: EdgeInsets.only(left: padding),
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFFFF4B97),
            ),
            onPressed: manageReminderScreen,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: const Text(
                'New reminder         ',
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 60,
          ),
          const PanalTitle(
            title: '    Paill name :  ',
            isRequired: true,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ))),
          const SizedBox(
            height: 20,
          ),
          const PanalTitle(
            title: '   Interval Selection ',
            isRequired: true,
          ),
          const SizedBox(
            height: 1,
          ),
          const IntervalSelection(),
          const SizedBox(
            height: 10,
          ),
          const PanalTitle(
            title: '   Starting time ',
            isRequired: true,
          ),
          const SizedBox(
            height: 10,
          ),
          const SelectTime(),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
            ),
            child: SizedBox(
              width: 200,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFFF4B97),
                  shape: const StadiumBorder(),
                ),
                child: const Center(
                    child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mali',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                onPressed: () {},
              ),
            ),
          )
        ]));
  }

  void manageReminderScreen() {
    Navigator.of(context).pushReplacementNamed('manageReminderScreen');
  }
}

class SelectTime extends StatefulWidget {
  const SelectTime({Key? key}) : super(key: key);

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  TimeOfDay time = const TimeOfDay(hour: 0, minute: 00);
  bool _clicked = false;

  Future<TimeOfDay> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
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
                  primary: Color(0xFFFF4B97), // button text color
                ),
              ),
            ),
            child: child!,
          );
        });

    if (picked != null && picked != time) {
      setState(() {
        time = picked;
        _clicked = true;
      });
    }

    return picked!;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFFFF4B97),
            shape: const StadiumBorder(),
          ),
          onPressed: () {
            _selectTime();
          },
          child: Center(
            child: Text(
              _clicked == false
                  ? 'Select Time'
                  : "${convertTime(time.hour.toString())}:${convertTime(time.minute.toString())}",
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Mali',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IntervalSelection extends StatefulWidget {
  const IntervalSelection({Key? key}) : super(key: key);
  @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  @override
  State<IntervalSelection> createState() => _IntervalSelectionState();
}

class _IntervalSelectionState extends State<IntervalSelection> {
  final _intervals = [6, 8, 12, 24];

  var _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '  Reminder me every    ',
            style: TextStyle(
              color: Color(0xFFFF4B97),
              fontFamily: 'Mali',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          DropdownButton(
            iconEnabledColor: const Color(0xFFFDB5B5),
            dropdownColor: Colors.white,
            //itemHeight: 8.0,
            hint: _selected == 0
                ? const Text(
                    'Select an Interval',
                    style: TextStyle(
                      color: Color(0xFFFDB5B5),
                      fontFamily: 'Mali',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
            elevation: 4,
            value: _selected == 0 ? null : _selected,
            items: _intervals.map(
              (int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(
                    value.toString(),
                    style: const TextStyle(
                      color: Color(0xFFFF4B97),
                      fontFamily: 'Mali',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ).toList(),
            onChanged: (newVal) {
              setState(
                () {
                  _selected = newVal!;
                },
              );
            },
          ),
          Text(
            _selected == 1 ? '   hour' : '   hours',
            style: const TextStyle(
              color: Color(0xFFFF4B97),
              fontFamily: 'Mali',
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class PanalTitle extends StatelessWidget {
  const PanalTitle({Key? key, required this.title, required this.isRequired})
      : super(key: key);

  final String title;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text.rich(TextSpan(children: <TextSpan>[
        TextSpan(
          text: title,
          style: const TextStyle(
            color: Color(0xFFFF4B97),
            fontFamily: 'Mali',
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
            text: isRequired ? '*' : '',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: const Color(0xFFFF4B97)))
      ])),
    );
  }
}

String convertTime(String minutes) {
  if (minutes.length == 1) {
    return '0$minutes';
  } else {
    return minutes;
  }
}
