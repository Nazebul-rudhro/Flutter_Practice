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
