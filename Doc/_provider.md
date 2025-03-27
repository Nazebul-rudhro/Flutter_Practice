```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/provider_data.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => provider_Counter()),
    ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}









// second part


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/provider_data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: Center(
        child: Consumer<provider_Counter>(builder:(context, counter, child){
          return Text(counter.count.toString(),
            style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),);
        } ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Provider.of<provider_Counter>(context, listen: false).increment();
          },
      child: Icon(Icons.add),
      ),

    );
  }
}


// third part


import 'package:flutter/widgets.dart';

class provider_Counter extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment(){
    _count++;
    notifyListeners();
  }
}


```