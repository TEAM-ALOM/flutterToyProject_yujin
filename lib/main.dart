import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber,),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'ToDoList',
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {//+에 이용
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 233, 193),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 253, 233, 193),
        title: const Text("ToDoList",
        style: TextStyle(
          fontSize: 30,
        ),
        ),

        leading: Icon(
          Icons.check,
          size: 35,
        ),
        actions:[
          IconButton(
            icon: Icon(
              Icons.add,
            size: 40,
            ),
            onPressed: (){
              //+버튼을 통한 투두리스트 실행
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ExpansionTile(
              title: Text('오늘의 할 일',
                style: TextStyle(
                    fontSize:15,
                    color: Colors.black,
                ),
              ),
              initiallyExpanded: false,
              backgroundColor: Color.fromARGB(255, 253, 233, 193),
              children:[
                        Text(
                          '할 일을 작성해주세요!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:13,
                          ),
                        ),
                      ],
          ),
          ExpansionTile(
            title: Text('일주일 간 해야할 일',
              style: TextStyle(
                fontSize:15,
                color: Colors.black,
              ),
            ),
            initiallyExpanded: false,
            backgroundColor: Color.fromARGB(255, 253, 233, 193),
            children:[
              Text(
                '할 일을 작성해주세요!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:13,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('이번 달의 할 일',
              style: TextStyle(
                fontSize:15,
                color: Colors.black,
              ),
            ),
            initiallyExpanded: false,
            backgroundColor: Color.fromARGB(255, 253, 233, 193),
            children:[
              Text(
                '할 일을 작성해주세요!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:13,
                ),
              ),
            ],
          ),
          SizedBox(
              height: 30,
          ),
          ExpansionTile(
            title: Text('지금 할 일',
              style: TextStyle(
                fontSize:15,
                color: Colors.black,
              ),
            ),
            initiallyExpanded: false,
            backgroundColor: Color.fromARGB(255, 253, 233, 193),
            children:[
              Text(
                '할 일을 작성해주세요!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:13,
                ),
              ),
            ],
          ),
        ],
      ),

        /*body : Container(
        color: Color.fromARGB(255, 253, 233, 193),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("오늘의 할 일",
                    style: TextStyle(
                      fontSize: 30,color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
              onPressed: (){
              },
            ),
            TextButton.icon( onPressed: () {
            },
              label: Text(
                "오늘의 할 일",
              style: TextStyle(
                fontSize: 30,color: Colors.black,
              ),
              ),
          icon:
          Icon(
              Icons.add, size: 30,color: Colors.black,
          ),
            ),
            TextButton.icon( onPressed: () {
            },
              label: Text(
                "일주일 간 해야할 일",
                style: TextStyle(
                  fontSize: 30,color: Colors.black,
                ),
              ),
              icon:
              Icon(
                Icons.add, size: 30,color: Colors.black,
              ),
            ),
            TextButton.icon( onPressed: () {
            },
              label: Text(
                "이번 달의 할 일",
                style: TextStyle(
                  fontSize: 30,color: Colors.black,
                ),
              ),
              icon:
              Icon(
                Icons.add, size: 30,color: Colors.black,
              ),
            ),
            TextButton.icon( onPressed: () {
            },
              label: Text(
                "지금 할 일",
                style: TextStyle(
                  fontSize: 30,color: Colors.black,
                ),
              ),
              icon:
              Icon(
                Icons.add, size: 30,color: Colors.black,
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}
