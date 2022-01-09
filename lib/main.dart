import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Statefull Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString()),
              RaisedButton(
                child: Text('Tambah Bilangan'),
                onPressed: () {
                  setState(() {
                    number = number + 1;
                  });
                },
              ),
              RaisedButton(
                child: Text('Reset'),
                onPressed: () {
                  setState(() {
                    number;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
