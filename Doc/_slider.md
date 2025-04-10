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
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Slider text", style: TextStyle(fontSize: _value),),
         Slider(
            min: 10,
            max: 50,
            value: _value, onChanged: (value){
              setState(() {
                _value = value;
              });
        }),
        ],
      ),
    );
  }
}

```