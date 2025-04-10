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
     body: SafeArea(child: Center(
       child: ElevatedButton(onPressed: (){
         showDialog(context: context, builder: (context){
       return Dialog(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20)
         ),
         child: Stack(
           alignment: Alignment.topCenter,
           clipBehavior: Clip.none,
           children: [
             Container(
               height: MediaQuery.of(context).size.width * 0.60,
               child: Padding(padding: EdgeInsets.all(20.0), child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 40,),
                   Text("Alert Dialog", style: TextStyle(
                     fontSize: 22,
                     fontWeight: FontWeight.bold,

                   ),),
                   SizedBox(height: 10,),
                   Text("This is an aleart dialog. Alert Dialog is very useful and easy to use. user get alert before doing any important operation"),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Cancel")),
                      TextButton(onPressed: (){}, child: Text("OK"))
                    ],
                  )

                 ],

               ),),
             ),

             Positioned(
                 top: -50,

                 child: Container(
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                       color: Colors.yellow,
                       width: 6
                     )
                   ),
                   child: CircleAvatar(
                     radius: 50,
                     backgroundImage: NetworkImage("https://img.freepik.com/free-photo/smiley-businesswoman-posing-outdoors-with-arms-crossed-copy-space_23-2148767055.jpg?semt=ais_hybrid"),
                    ),
                 ))
           ],
         ),
       );

         });
       }, child: Text("Log out")),
     )),
    );
  }
}

```