import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget{
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(child: Text("Two", style: TextStyle(fontSize: 30)),),
    );
  }
}