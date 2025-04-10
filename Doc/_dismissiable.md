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
        child: Dismissible(
            key: ValueKey("abc"),
            background: Container(
              color:  Colors.green,
              child: Icon(Icons.delete),
            ),
            child: ListTile(
              title: Text("I am Rudhro"),
              subtitle: Text("Yes it's true and he lives in bangladesh."),
              trailing: Icon(Icons.ac_unit),
            ))
      ),
    );
  }
}

```