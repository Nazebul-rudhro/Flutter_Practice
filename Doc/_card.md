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
          title: Text("card Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

   body:Center(
     child: Card(
       elevation: 5,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(50),
           topRight: Radius.circular(50)
         )
       ),
       child: Container(
         height: 250,
         width: 250,
         child: Center(
           child: Text("I Love Code."),
         ),
       ),
     ),
   ) ,
    );


  }
}

```