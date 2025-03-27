import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget{
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(child: Text("One", style: TextStyle(fontSize: 30),),),
    );
  }
}