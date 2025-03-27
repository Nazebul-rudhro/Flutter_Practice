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


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("gridview Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

   body: GridView.count(
     crossAxisSpacing: 10,
     mainAxisSpacing: 10,
     // clipBehavior: Clip.none,
     crossAxisCount: 2, children: [
     Container(
       height: 50,
       width: 100,
       color: Colors.greenAccent,

     ),
     Container(
       height: 50,
       width: 100,
       color: Colors.blueAccent,

     ),
     Container(
       height: 50,
       width: 100,
       color: Colors.redAccent,

     ),
   ],),
    );


  }
}

```