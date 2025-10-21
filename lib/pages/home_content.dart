import 'package:flutter/material.dart';
import 'package:twitter_clone/components/register_button.dart';
import 'package:twitter_clone/components/text_link.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          isDarkThemed: false,
          buttonSize: 350,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(),
        ),

        RegisterButton("", buttonText: "Create account", isDarkThemed: true, buttonSize: 350, ),

        SizedBox(height: 10),

        Row(
          children: [
            Text(
              "By signing up, you agree to our ",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),

            TextLink(linkText: "Terms, ", isNewPage: false,), 

            TextLink(linkText: "Privacy Policy", isNewPage: false),

            Text(" and ",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),

            TextLink(linkText: "Cookie Use.", isNewPage: false),
          ],
        ),

        SizedBox(height: 30),

        Row(
          children: [
            Text("Have an account already? ",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),

            TextLink(linkText: "Log in", isNewPage: true,),
          ],
        ),
      ],
    );
  }
}