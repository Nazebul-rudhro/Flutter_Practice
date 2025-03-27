import 'package:flutter/material.dart';
import 'package:practice/homepage.dart';
import 'package:practice/provider_data.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Provider_Data())
  ], child:  MyApps(),));
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}