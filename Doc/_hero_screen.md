```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/detailScreen.dart'; // Import your detail screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<dynamic, String>> item = [
    {"image" : "images/facebook.png", "text": "facebook"},
    {"image" : "images/instagram.png", "text": "instagram"},
    {"image": "images/whatsapp.png", "text": "WhatsApp"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Apps"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Expanded(
        flex: 100,
        child: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      imagePath: item[index]["image"]!,
                      tag: "heroTag$index",
                      text: item[index]["text"]!,
                    ),
                  ),
                );
              },
              child: Container(
                clipBehavior: Clip.none,
                child: Hero(
                  tag: "heroTag$index", // Ensure the tag matches the one in the destination screen
                  child: Column(
                    children: [
                      Image.asset(item[index]["image"]!, fit: BoxFit.cover),
                      Text(item[index]['text'].toString())
                    ],
                  ), // Display the image here
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



//Second Part



import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imagePath;
  final String tag;
  final String text;

  DetailScreen({required this.imagePath, required this.tag, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: tag,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Text(
              text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

```