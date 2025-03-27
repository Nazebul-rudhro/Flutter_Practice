```dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  File? _image;
  Future CameraImage() async{
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image  = File(image!.path);
    });

  }
  Future GalleryImage() async{
    var g_image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(g_image!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 300,
            width: 400,
            color: Colors.green,
            child: _image == null ? Center(child: Text("File not Found"),): Image.file(_image!),
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){
            CameraImage();
          }, child: Icon(Icons.camera, size: 50,),),
          SizedBox(width: 20,),
          FloatingActionButton(onPressed: (){
            GalleryImage();
          }, child: Icon(Icons.image, size: 50,),)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );

  }
}
```