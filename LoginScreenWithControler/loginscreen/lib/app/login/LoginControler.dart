import 'package:flutter/material.dart';

class LoginController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isInputDataValid() {
    return( emailController.text=="john.doe@example.com" ||
        passwordController.text=="pass5@Q");
  }
}