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
  var selected = "Choose option";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(selected),
            DropdownButton(
                iconSize: 40,
                iconEnabledColor: Colors.red,
                // icon: Icon(Icons.add),
                items: [

              DropdownMenuItem(value: "One", child: Text("One")),
              DropdownMenuItem(value: "Two", child: Text("Two")),
            ], onChanged: (val){
              setState(() {
                selected = val ?? "Choose option";
              });
            })
          ],
        ),
      ),
    );
  }
}

```