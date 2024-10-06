import "package:flutter/material.dart";
import "package:flutter_application_1/components/my_text_field.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double scrreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: scrreenHeight * 0.3,
              ),
              Icon(
                Icons.camera,
                size: 48,
              ),
              Text("Welcome back!"),
              //email controller
              MyTextField(
                  myController: emailController,
                  myHintText: "Your email",
                  isObscureText: false),
              MyTextField(
                  myController: pwdController,
                  myHintText: "Your password",
                  isObscureText: true),
              SizedBox(
                height: scrreenHeight * 0.02,
              ),
              Text("Forgot Password?"),
              SizedBox(
                height: scrreenHeight * 0.02,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Sign-In"),
              ),
              SizedBox(
                height: scrreenHeight * 0.02,
              ),
              Text("No account? Sign-Up now!"),
            ],
          ),
        ),
      ),
    );
  }
}
