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

        child: Column(
children: [
  ExpansionTile(
      title: Text("Rudhro"),
    leading: Icon(Icons.ac_unit),
    trailing: Icon(Icons.arrow_downward),
    children: [
      Container(
        height: 100,
        color: Colors.teal,
      )
    ],
  ),
  ExpansionTile(
    title: Text("Rudhro"),
    leading: Icon(Icons.ac_unit),
    trailing: Icon(Icons.arrow_downward),
    children: [
      Container(
        height: 100,
        color: Colors.greenAccent,
      )
    ],
  )
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