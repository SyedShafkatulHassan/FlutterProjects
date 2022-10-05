import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 228, 151, 151)),
      home: Scaffold(
      body: Column(
        children:<Widget> [
          Container(
             height:400,
             width: 400,
             child :CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/image/Shafkat.jpg'),
              ),
          ),
          Container(
             height:400,
             width: 400,
             child: Column(children:<Widget>[
                Text('Name: Syed Shafkatul Hassan', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
                Text('BS.c in CSE', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),
                Text('Flutter Developer', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),
                Text('ML Lover', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),
                Text('ID : LUCSFB2234', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
                Text('                             ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),
                Text('  career objective:                             ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
                Text('                             ', style: TextStyle(fontSize: 7, fontWeight: FontWeight.w300),),
                Text('*Want to become a good problem solver.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                Text('*Want to become a software eng.         ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                Text('                             ', style: TextStyle(fontSize: 7, fontWeight: FontWeight.w300),),
                Text('Skills:                                                  ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
                 Text('                             ', style: TextStyle(fontSize: 7, fontWeight: FontWeight.w300),),
                Text('Languages: Dart, Java, Python, C, C++  ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                Text('Framework:JavaSwing                          ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
             ],
             ),
          ),
        ],
      ) 
      ),
    );
  }
}
