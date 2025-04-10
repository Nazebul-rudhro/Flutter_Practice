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
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(  // Wrapping the Column in SingleChildScrollView
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedCrossFade(
                    firstChild: Container(
                      height: 200,
                      color: Colors.green,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          check = false;
                        });
                      },
                          child:Text("Show Data")),
                    ), secondChild: Container(
                  child: Text("It's Ok", style: TextStyle(fontSize: 60),),
                ), crossFadeState: check?CrossFadeState.showFirst:CrossFadeState.showSecond,
                    duration: Duration(seconds: 2))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```