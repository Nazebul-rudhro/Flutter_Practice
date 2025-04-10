```dart
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

        child: Center(
          child: AnimatedContainer(
            height: _value == false? 150: 300,
              width: _value == false? 150: 350,
              color: Colors.teal,
              duration: Duration(seconds: 2),
          ),
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