```dart
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar:AppBar(
        flexibleSpace: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.red], 
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        title: Text("Gradient AppBar"),
      ),

      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
              ),
            ),
          ),



          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.red, Colors.brown, Colors.blue],
                radius: 0.5,

              )
            ),
          ),



          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [Colors.pink, Colors.blue, Colors.green, Colors.pink], // বিভিন্ন কালার
                startAngle: 0.0,  // কোথা থেকে শুরু হবে (Radians)
                endAngle: 5,  // কতদূর যাবে (Radians)
                center: Alignment.center, // কেন্দ্র
              ),
            ),
          ),



          ShaderMask(shaderCallback:(bonds)=>LinearGradient(
              colors: [Colors.redAccent, Colors.amber],).createShader(bonds),
          child: Text(
            "Gradient Text",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          ),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: (){},
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[Colors.green, Colors.blue ],
                ),
                borderRadius: BorderRadius.circular(10),
              ), child: Text(
              "Gradient Text",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            )
            )
           )

        ],
      )
    );
  }
}



```