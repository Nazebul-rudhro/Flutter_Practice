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
          title: Text("Listview Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

    body: Stack(
      alignment: Alignment.bottomCenter,
      children: [

        Container(
          height: 300,
          width: 300,
          color: Colors.deepOrange,
        ),
        Container(

          height: 150,
          width: 150,
          color: Colors.blueAccent,
        ),

      ],
    ),
    );


  }
}






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
        title: Text("Stack Apps"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width: 300,
              color: Colors.green,
            ),
            Positioned(
              bottom: -50,
              child:Container(
                height: 100,
                width: 100,
                decoration:BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ) ,),)
          ],
        ),
      ),
    );


  }
}

```