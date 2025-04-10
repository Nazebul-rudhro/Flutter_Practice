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
         child: Column(
           children: [
             IconButton(onPressed: (){},tooltip: "IconButton",  icon: Icon(Icons.featured_video)),

             Tooltip(
               message: "Container",
               waitDuration: Duration(seconds: 2),
               showDuration: Duration(seconds: 5),
               child: Container(
                 height: 200,
                 width: 200,
                 color: Colors.green,
               ),
             )
           ],
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