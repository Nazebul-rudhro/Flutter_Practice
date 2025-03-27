```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("Column Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width:120,
          decoration: BoxDecoration(color: Colors.amber),
        ),
        Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(color: Colors.blueAccent),
        ),
        Container(height: 200,
        width: 120,
        decoration:  BoxDecoration(color: Colors.deepOrange),)
      ],
    ),
    );


  }
}

```