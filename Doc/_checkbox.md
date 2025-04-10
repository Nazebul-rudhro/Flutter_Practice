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
  bool first = false;
  bool second = false;
  bool third = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(  // Wrapping the Column in SingleChildScrollView
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Shopping List", style: TextStyle(fontSize: 24)),
                CheckboxListTile(
                  checkColor: Colors.black,
                  secondary: Icon(Icons.local_grocery_store),
                  value: first,
                  title: Text("Apple"),
                  onChanged: (bool? value) {
                    setState(() {
                      first = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: Icon(Icons.local_grocery_store),
                  title: Text("Milk"),
                  value: second,
                  onChanged: (bool? value) {
                    setState(() {
                      second = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: Icon(Icons.local_grocery_store),
                  title: Text("Bread"),
                  value: third,
                  onChanged: (bool? value) {
                    setState(() {
                      third = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```