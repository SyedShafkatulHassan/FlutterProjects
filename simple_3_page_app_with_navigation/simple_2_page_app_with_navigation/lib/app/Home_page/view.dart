import 'package:flutter/material.dart';
import 'package:simple_2_page_app_with_navigation/app/Home_page/controler.dart';

import 'package:simple_2_page_app_with_navigation/app/River/view.dart';
import 'package:simple_2_page_app_with_navigation/app/sea/veiw.dart';
class HomePage extends StatelessWidget {
  final LoginController _controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Enter the name Number of image you want to see:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text("1.River"),
          SizedBox(
            height: 10,
          ),
          Text("2.Sea"),
          SizedBox(
            height: 10,
          ),
          _gettextfield(context),
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
          
          if (_controller.TextControler.text == "1") {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => River(),
                ));
          } 
          else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sea(),
                ));
          }
        },
        child: const Text("ok"),
      ),
    );
  }

  Widget _gettextfield(BuildContext context) {
    return TextField(
      controller: _controller.TextControler,
    );
  }
}
