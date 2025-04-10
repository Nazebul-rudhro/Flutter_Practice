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
      backgroundColor: _value == false?Colors.yellow:Colors.teal,
      body: SafeArea(

        child: Center(
          child:  Switch(value: _value, onChanged: (val){
            setState(() {
              _value = val;
              print(val);
            });
          }),
        ),
      ),
    );
  }
}

```