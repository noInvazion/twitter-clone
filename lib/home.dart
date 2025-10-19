import 'dart:io';

import 'package:flutter/material.dart';
import 'package:twitter_clone/components/register_button.dart';
import 'package:twitter_clone/components/text_link.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/twitter.png", width: 20),

        SizedBox(height: 350),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Need another account?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Whether you need another account for work or just don't want your mum seeing your spicy takes, we've got you covered.",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ),

        SizedBox(height: 200),

        RegisterButton(
          "assets/images/google.png",
          buttonText: "Continue with Google",
        ),

        SizedBox(height: 20),
        RegisterButton("", buttonText: "Create account"),

        SizedBox(height: 10),

        Row(
          children: [
            Text(
              "By signing up, you agree to our ",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),

            TextLink(linkText: "Terms, "), 

            TextLink(linkText: "Privacy Policy"),

            Text(" and ",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),

            TextLink(linkText: "Cookie Use."),
          ],
        ),

        SizedBox(height: 30),

        Row(
          children: [
            Text("Have an account already? ",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),

            TextLink(linkText: "Log in"),
          ],
        ),
      ],
    );
  }
}
