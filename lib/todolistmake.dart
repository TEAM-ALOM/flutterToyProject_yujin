import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/time.dart';

class todolistmake extends StatefulWidget {
  const todolistmake({super.key});

  @override
  State<todolistmake> createState() => _todolistmakeState();
}

class _todolistmakeState extends State<todolistmake> {

  DateTime initialDay = DateTime.now();
  DateTime initialtime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 233, 193),
      appBar: AppBar(
      Row(
                  children: [
                    Text("날짜",
                    style: TextStyle(fontSize: 18,
                    ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '${initialDay.year} - ${initialDay.month} - ${initialDay.day}',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          final DateTime? dateTime = await showDatePicker(
                              context: context,
                              initialDate: initialDay,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(3000));
                          if (dateTime != null) {
                            setState(() {
                              initialDay = dateTime;
                            });
                          }
                        },
                        child: Text('날짜 선택',
                          style: TextStyle(fontSize: 20,
                          color: Colors.black,
                          ),
                        ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("시간",
                      style: TextStyle(fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      child: CupertinoButton(
                        color: Colors.white,
                        child: Text(
                          '0 : 0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>const time1()),
                        ),
                        },
                      ),
                    ),
                    SizedBox(
                      child: CupertinoButton(
                        color: Colors.white,
                        child: Text(
                          '23 : 59',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () =>{Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const time1()),
                        ),
                        },
                      ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
        ),
      ),
      );
  }
}
