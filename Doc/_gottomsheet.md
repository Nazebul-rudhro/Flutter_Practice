```dart
import 'package:flutter/material.dart';

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
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.all(16),
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.5, // সর্বোচ্চ ৫০% স্ক্রিন পর্যন্ত যাবে
                  ),
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    children: [
                      ListTile(
                        title: Text("one"),
                        subtitle: Text("This is One"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Two"),
                        subtitle: Text("This is Two"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Three"),
                        subtitle: Text("This is three"),
                        trailing: Icon(Icons.access_alarm),
                      ),

                      ListTile(
                        title: Text("Three"),
                        subtitle: Text("This is three"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Four"),
                        subtitle: Text("This is four"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Five"),
                        subtitle: Text("This is five"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("one"),
                        subtitle: Text("This is One"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Two"),
                        subtitle: Text("This is Two"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Three"),
                        subtitle: Text("This is three"),
                        trailing: Icon(Icons.access_alarm),
                      ),

                      ListTile(
                        title: Text("Three"),
                        subtitle: Text("This is three"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Four"),
                        subtitle: Text("This is four"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Five"),
                        subtitle: Text("This is five"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}

```