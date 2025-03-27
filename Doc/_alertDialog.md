```dart
import 'package:flutter/material.dart';

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
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("Log out Alert"),
              content: Text("Do you want to exit?"),
              elevation: 4,
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Yes")),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("No"))
              ],
            );
          });
        },
            child: Text("Log Out", style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

```