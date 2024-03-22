import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class time1 extends StatefulWidget {
  const time1({super.key});

  @override
  State<time1> createState() => _time1State();
}

class _time1State extends State<time1> {
  DateTime X = DateTime(2023, 6, 16, 22, 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : CupertinoDatePicker(
          initialDateTime: X,
          mode: CupertinoDatePickerMode.time,
          use24hFormat: true,
          onDateTimeChanged: (DateTime newTime) {
            setState(() => X = newTime);
          },
        ),
    );
  }
}
