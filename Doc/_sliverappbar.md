import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
const HomePage({super.key});
@override
State<StatefulWidget> createState() {
// TODO: implement createState
return HomePageState();
}
}
class HomePageState extends State<HomePage>{
@override
Widget build(BuildContext context) {
// TODO: implement build
return Scaffold(
body:CustomScrollView(
slivers: [
SliverAppBar(
pinned: true,
expandedHeight: 200,
backgroundColor: Colors.deepOrange,
flexibleSpace: FlexibleSpaceBar(
title: Text("Heading"),

            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            AddDetailes("One", "This is one"),
            AddDetailes("Two", "This is Two"),
            AddDetailes("Three", "This is Three"),
            AddDetailes("Four", "This is Four"),
            AddDetailes("Five", "This is Five"),
            AddDetailes("Six", "This is Six"),
            AddDetailes("Siven", "This is Siven"),
            AddDetailes("Eight", "This is Eight"),
            AddDetailes("Nine", "This is Nine"),
            AddDetailes("Ten", "This is Ten"),
            AddDetailes("Eleven", "This is Eleven"),
            AddDetailes("twelve", "This is twelve"),
            AddDetailes("thirteen", "This is thirteen"),
            AddDetailes("Fourteen", "This is Fourteen"),
            AddDetailes("Fifteen", "This is Fifteen"),
            AddDetailes("Sixteen", "This is Sixteen"),
            AddDetailes("Seventeen", "This is Seventeen"),
            AddDetailes("Eighteen", "This is Eighteen"),
          ]))
        ],
      ),
    );
}
}


Widget AddDetailes(
String name,
String description,
){
return ListTile(
title: Text(name),
subtitle: Text(description),
leading: CircleAvatar(
child: Text(name[0]),
),
);
}