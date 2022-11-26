import 'package:flutter/material.dart';
import 'package:simple_2_page_app_with_navigation/app/Home_page/view.dart';
import 'package:simple_2_page_app_with_navigation/app/River/view.dart';

class River extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "River picture:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Image(image: AssetImage("asset/river.jpg")),
          SizedBox(
            height: 10,
          ),
          _getLoginButton(context)
        ],
      ),
    );
  }
  Widget _getLoginButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: () {
           Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
        },
        child: const Text("HomePage"),
      ),
    );
  }

}

