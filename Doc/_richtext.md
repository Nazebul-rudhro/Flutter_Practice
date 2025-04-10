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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RichText(text: TextSpan(
          text: "Hello Bangladesh", style: TextStyle(color: Colors.blue),
          children: [
            TextSpan(
              text: "Yes", style: TextStyle(color: Colors.red)
            )
          ]
        )),
      ),
    );
  }
}

```