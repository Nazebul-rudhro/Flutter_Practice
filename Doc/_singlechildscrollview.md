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
          title: Text("SingleChildScrollView Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

    body: SingleChildScrollView(
     child: Column(
      children: [
        SizedBox(height: 200,),
        Container(
          height: 200,
          width:120,
          decoration: BoxDecoration(color: Colors.amber),
        ),
        SizedBox( height: 200,),
        Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(color: Colors.blueAccent),
        ),
        SizedBox(height: 200,),
        Container(height: 200,
        width: 120,
        decoration:  BoxDecoration(color: Colors.deepOrange),)
      ],
    ),
    ),
    );


  }
}


//Row scrollview



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
        title: Text("SingleChildScrollView Apps"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(height: 200,),
            Container(
              height: 200,
              width:120,
              decoration: BoxDecoration(color: Colors.amber),
            ),
            SizedBox( height: 200, width: 200,),
            Container(
              height: 200,
              width: 120,
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            SizedBox(height: 200, width: 200,),
            Container(height: 200,
              width: 120,
              decoration:  BoxDecoration(color: Colors.deepOrange),)
          ],
        ),
      ),
    );


  }
}


```