```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:practice/pageone.dart';
import 'package:practice/pagethree.dart';
import 'package:practice/pagetwo.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(
    initialPage: 2,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("gridview Apps"),
          centerTitle: true,
          backgroundColor: Colors.amber,
      ),

   body: PageView(
     controller: _pageController,
     scrollDirection: Axis.vertical,
     children: [
       PageOne(),
       PageTwo(),
       PageThree(),
     ],
   ) ,
    );


  }
}

```