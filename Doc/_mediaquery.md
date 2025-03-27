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
    var _height = MediaQuery.of(context).size.height;
    var _widht = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("MediaQuery Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

 body: Center(
   child: Container(
     height: _height / 2,
     width: _widht / 3,
     decoration:  BoxDecoration(color: Color(0xFF000000)),
   ),
 ),
    );


  }
}

```