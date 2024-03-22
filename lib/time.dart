import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class time1 extends StatefulWidget {
  const time1({super.key});

  @override
  State<time1> createState() => _time1State();
}

class _time1State extends State<time1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : onDateTimeChanged: (DateTime newTime) {
            setState(() => X = newTime);
          },
        ),
    );
  }
}
