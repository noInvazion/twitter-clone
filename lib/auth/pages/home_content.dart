import 'package:flutter/material.dart';
import 'package:twitter_clone/auth/components/register_button.dart';
import 'package:twitter_clone/auth/components/text_link.dart';
import 'package:twitter_clone/auth/pages/signup.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    loadNewPage(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Signup()),
      );
    }

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Need another account?",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),

        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Whether you need another account for work or just don't want your mum seeing your spicy takes, we've got you covered.",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),

        SizedBox(height: 180),

        RegisterButton(
          "assets/images/google.png",
          buttonText: "Continue with Google",
          isDarkThemed: false,
          buttonSize: 350,
          onPressed: () {},
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(indent: 20, endIndent: 20),
        ),

        RegisterButton(
          "",
          buttonText: "Create account",
          isDarkThemed: true,
          buttonSize: 350,
          onPressed: (){loadNewPage(context);},
        ),

        SizedBox(height: 10),

        Row(
          children: [
            Text(
              "By signing up, you agree to our ",
              style: Theme.of(context).textTheme.labelSmall,
            ),

            TextLink(linkText: "Terms, ", isNewPage: false),

            TextLink(linkText: "Privacy Policy", isNewPage: false),

            Text(" and ", style: Theme.of(context).textTheme.labelSmall),

            TextLink(linkText: "Cookie Use.", isNewPage: false),
          ],
        ),

        SizedBox(height: 50),

        Row(
          children: [
            Text(
              "Have an account already? ",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),

            TextLink(linkText: "Log in", isNewPage: true),
          ],
        ),
      ],
    );
  }
}
