import 'dart:ui';

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
DateTime? _dateTime;
TimeOfDay? _time;

Future<void> getDate() async{
DateTime? pickeddate = await showDatePicker(
    context: context,
    initialDate: DateTime(DateTime.now().year),
    firstDate: DateTime(DateTime.now().year - 20),
    lastDate: DateTime(DateTime.now().year + 20));
if(pickeddate != null){
setState(() {
  _dateTime = pickeddate;
});
}
}

Future<void> getTime() async{
  TimeOfDay? time = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now());
  setState(() {
    _time = time;
  });
}



  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _dateTime == null ? Text("Choose Date") : Text("Date : ${_dateTime!.year}, ${_dateTime!.month}, ${_dateTime!.day}"),
          ElevatedButton(onPressed: (){
            getDate();
          }, child: Text("Get Date")),

          SizedBox(height: 20,),
          _time == null ? Text("Choose Time"): Text("Time ${_time!.hour} - ${_time!.minute}"),
          
          ElevatedButton(onPressed: (){
            getTime();
          }, child: Text("Get Time"))
        ],
      ),
    ),
    );
  }
}
