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
  void MyShnackBar(String message){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message, style: TextStyle(
            color: Colors.yellow),),
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 10),
          action: SnackBarAction(label: "Ok", onPressed: (){
            // Navigator.pop(context);
          }),
        ));
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: ElevatedButton(onPressed: (){
         MyShnackBar("This is coustom Shanack Bar");
       }, child: Text("Click here")),
     ),
   );
  }
}

```