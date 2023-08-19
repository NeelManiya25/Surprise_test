import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int i = 0;
  Color c1 = Colors.yellow;
  Color c2 = Colors.red;
  Color c3 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APPLICATION"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Align(
        child: Ink(
          decoration: BoxDecoration(
            color: c3,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                i++;
                if (i % 2 == 0) {
                  c3 = c1;
                } else {
                  c3 = c2;
                }
              });
            },
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: Text("$i"),
            ),
          ),
        ),
      ),
    );
  }
}
