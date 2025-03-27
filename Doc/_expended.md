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

   body: Column(
     children: [
       Expanded(
           flex: 2,
           child: Container(
         color: Colors.redAccent,
       )),
       Expanded(
           flex: 1,
           child: Container(
         color: Colors.green,
       )),
       Expanded(
           flex: 1,
           child: Container(color: Colors.black12,))
     ],
   ),
    );


  }
}

```