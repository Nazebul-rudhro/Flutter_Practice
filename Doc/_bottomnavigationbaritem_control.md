```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/pagefive.dart';
import 'package:practice/pagefour.dart';
import 'package:practice/pageone.dart';
import 'package:practice/pagethree.dart';
import 'package:practice/pagetwo.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  final Pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    Pagefour(),
    Pagefive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
       backgroundColor: Colors.greenAccent,
        selectedFontSize: 14,
        elevation: 4,
        enableFeedback: true,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
    },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.gif), label: "GIF"), // label যোগ করা হয়েছে
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],


      ),
      body:Pages[_currentIndex] ,
    );
  }
}

```