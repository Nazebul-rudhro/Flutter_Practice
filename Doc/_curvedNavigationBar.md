```dart
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice/pagefive.dart';
import 'package:practice/pagefour.dart';
import 'package:practice/pageone.dart';
import 'package:practice/pagethree.dart';
import 'package:practice/pagetwo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var _page = 0;
  final pages = [  PageOne(), PageTwo(), PageThree(), Pagefour(), Pagefive() ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        color: Colors.white,
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 600),
        animationCurve: Curves.easeInOut,

        items: [
        Icon(Icons.home),
        Icon(Icons.notification_add),
        Icon(Icons.production_quantity_limits),
        Icon(Icons.access_alarm),
        Icon(Icons.details)
      ],
      onTap: (index){
        setState(() {
          _page = index;
        });
      },
      ),
    );
  }
}

```