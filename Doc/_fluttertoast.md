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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Click Successfully", // মেসেজ
              toastLength: Toast.LENGTH_SHORT, // সাইজ
              gravity: ToastGravity.BOTTOM, // স্ক্রীনের নিচে দেখাবে
              backgroundColor: Colors.blue, // ব্যাকগ্রাউন্ড কালার
              textColor: Colors.white, // টেক্সট কালার
              fontSize: 16.0, // ফন্ট সাইজ
            );
          },
          child: Text("Click here"),
        ),
      ),
    );
  }
}

```