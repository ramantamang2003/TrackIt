import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
          child: Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Text(
              "Forgot password?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Text(
            "Please enter the email  address you used to create your account ,and we'll send you a link to reset your password",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.mail))),
              ),
            ),
            height: 50,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.white, Colors.yellow]),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              "Confirm",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )),
          ),
        )
      ]),
    );
  }
}
