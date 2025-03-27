```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

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

    final pages = [
      Container( color: Colors.blue,
      child: Center(
        child: Text("Sakib"),
      ),
      ),

      Container(
        height: 200,
        width: 200,
        color: Colors.greenAccent,
        child: Center(
          child: Text("Rakib"),
        ),
      ),

      Container(
        color: Colors.red,
        child: Center(
          child: Text("Hamza"),
        ),
      )
    ];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("liquid_swipe Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

    body: Builder(builder: (context) => LiquidSwipe(pages: pages)),
    );


  }
}

```