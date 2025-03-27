```dart

import 'package:flutter/material.dart';
import 'package:practice/pageone.dart';
import 'package:practice/pagetwo.dart';
import 'package:practice/pagethree.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
                Tab(icon: Icon(Icons.message), text: "Message"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```