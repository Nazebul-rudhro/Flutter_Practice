```dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("SingleChildScrollView Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

 body: ListView(
   children: [
     Container(
       height: 300,
       width: 300,
       decoration:  BoxDecoration( color:  Colors.lightGreen),
     ),
     SizedBox(height: 100,),
     Container(
       height: 300,
       width: 300,
       decoration:  BoxDecoration( color:  Colors.deepOrange),
     ),
     SizedBox(height: 200,),
     Container(
       height: 300,
       width: 300,
       decoration:  BoxDecoration( color:  Colors.redAccent),
     )
   ],
 ),
    );


  }
}





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Apps"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: ListView(
        children: [
          ListTile(

            title: Text("Hello"),
            subtitle: Text("Scalable vector & Free Google Fonts"),
            leading: Icon(Icons.message),
            trailing: Icon(Icons.add_a_photo),
          )
        ],
      ),
    );


  }
}

```