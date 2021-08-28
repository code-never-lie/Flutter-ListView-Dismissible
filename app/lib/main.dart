import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Home Page"),
          backgroundColor: Colors.pink,
        ),
        body: ListView.separated(
            //padding: const EdgeInsets.all(10.0),
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                  key: ValueKey(123),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    print(direction);
                  },
                  background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.delete,
                        size: 40,
                      )),
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: ListTile(title: Text("Number ${list[index]}")),
                  ));
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.red,
                  thickness: 2,
                  height: 15,
                ),
            itemCount: list.length));
  }
}
