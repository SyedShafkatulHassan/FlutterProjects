import 'package:flutter/material.dart';
import 'package:loginscreen/app/login/LoginControler.dart';

class LoginView extends StatelessWidget {
  LoginController _controller = LoginController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          _getimage(),
          SizedBox(height: 100),
          _getEmailInputField(),
          SizedBox(height: 10),
          _getPasswordInputField(),
          SizedBox(height: 10),
          ForgetPassword(context),
          SizedBox(height: 30),
          LoginOption(context),
          SizedBox(height: 50),
          last(context),
        ],
      )),
    );
  }

  Widget _getimage() {
    return Container(
      child: Image(
        image: AssetImage('assets/Image3.jpeg'),
      ),
    );
  }

  Widget _getEmailInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: _controller.emailController,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email_outlined), hintText: "Email"),
        keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {},
      ),
    );
  }

  Widget _getPasswordInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: _controller.passwordController,
        decoration:const InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: Icon(
            Icons.remove_red_eye_rounded,
          ),
          hintText: "Password",
        ),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        obscuringCharacter: "*",
      ),
    );
  }

  Widget ForgetPassword(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: ElevatedButton.styleFrom(
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Under Development"),
            ));
          },
          child: Text(
            'Forget password ?',
            style: TextStyle(
                color: Color.fromARGB(255, 17, 11, 11).withOpacity(0.6)),
          ),
        ),
      ],
    );
  }

  Widget LoginOption(context) {
    return Row(
      children: [
        SizedBox(
            width: 180,
            height: 70,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                                color: Color.fromARGB(255, 240, 233, 233))))),
                onPressed: () {
                  if (_controller.isInputDataValid()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Congratulation you have signed up!"),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Wrong Person"),
                    ));
                  }
                },
                child: Text("Sign In"))),
        SizedBox(
          width: 10,
        ),
        SizedBox(
            width: 100,
            height: 100,
            child: IconButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              color: Color.fromARGB(255, 240, 233, 233))))),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Under Development"),
                ));
              },
              icon: Image.asset('assets/facebook.jpg'),
            )),
        SizedBox(
          width: 10,
        ),
        SizedBox(
            width: 100,
            height: 100,
            child: IconButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              color: Color.fromARGB(255, 240, 233, 233))))),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Under Development"),
                ));
              },
              icon: Image.asset('assets/image2.jpg'),
            ))
      ],
    );
  }
}

Widget last(context) {
  return (
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("Do not have a account?"),
        TextButton(
          style: ElevatedButton.styleFrom(
            
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Under Development"),
            ));
          },
          child: Text(
            'Forget password ?',
            style: TextStyle(
                color: Color.fromARGB(255, 92, 158, 219).withOpacity(0.6)),
          ),
        ),
      ],
    )
  );
}
