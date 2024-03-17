import 'package:flutter/material.dart';

class todolistmake extends StatelessWidget {
  const todolistmake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 233, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 233, 193),
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("취소",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "오늘의 할일이 무엇인가요?",
        ),
        ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.purple,
              style: const TextStyle(
                  color: Colors.black,
              ),
              decoration: InputDecoration(
                  labelText: "할 일",
                enabledBorder:UnderlineInputBorder(
                  borderSide:BorderSide(color:Colors.purple,
                  ),
                ),
                focusedBorder:UnderlineInputBorder(
                  borderSide:BorderSide(color:Colors.purple,
                  ),
                ),
            ),
        ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      );
  }
}
