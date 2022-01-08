import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  int reset = 1;
  void tekantombol() {
    setState(() {
      number = number + 1;
    });
  }

  void clear() {
    setState(() {
      number = reset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Statefull Widget"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 1 + number.toDouble()),
                ),
                RaisedButton(
                  child: Text('Tambah'),
                  onPressed: tekantombol,
                ),
                RaisedButton(
                  child: Text('Reset'),
                  onPressed: clear,
                )
              ],
            ),
          ),
        ));
  }
}
