```dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(

        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 300,
              color: Colors.red,
            ),
            BackdropFilter(filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), child: Container(
              color: Colors.white.withOpacity(0.3),
            ), )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _value =! _value;
        });
      },child: Icon(Icons.add),),
    );
  }
}

```