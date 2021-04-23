import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //setState dapat disimpan disini
  int number = 1;
  void tekanTombol(){
    setState(() {
      number = number + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Statefull")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString()),
              MaterialButton(
                color: Colors.blue[100],
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                onPressed: tekanTombol,
                child: Text("Tambah")),
            ],
          ),
        ),
      ),
    );
  }
  //atau setState bisa disimpan disini
}