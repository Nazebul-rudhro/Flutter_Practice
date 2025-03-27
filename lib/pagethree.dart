import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget{
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(child: Text("Three",style: TextStyle(fontSize: 30)),),
    );
  }
}