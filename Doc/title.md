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
          title: Text("Practice Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.message)),
            IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person))
          ],
      ),

    );
  }
}

```