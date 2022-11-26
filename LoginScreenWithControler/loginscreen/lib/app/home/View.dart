import 'package:flutter/material.dart';
import 'package:loginscreen/app/login/LoginView.dart';
class HomePage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body:LoginView(), 
          ),
    );
  }
}


