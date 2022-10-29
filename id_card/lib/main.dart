import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
       home: ninjacard(),
  ));
}

class ninjacard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 87, 7, 80),
        appBar: AppBar(
          title: Text("Ninja Id Card"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 82, 31, 31),
          elevation: 0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30,40,30,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                 Center(
                   child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ninja.jpg'),
                    radius: 150,
                   ),
                 ),
                  SizedBox(height:10),
                 Center(
                   child: Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                   ),
                 ),
                 SizedBox(height:10),
                 Center(
                   child: Text(
                    "Shafkat",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                   ),
                 ),
                 SizedBox(height:30),
                 Center(
                   child: Text(
                    "Current Ninja Level",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                   ),
                 ),
                 SizedBox(height:10),
                 Center(
                   child: Text(
                    "10",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                   ),
                 ),
                 SizedBox(height:30),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                          "Syed@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            
                          ),
                      )
                      
                    ]
                    ,                  
                 )
            ]),
        ),

    );
    
  }
}

