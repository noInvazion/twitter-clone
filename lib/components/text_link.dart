import 'package:flutter/material.dart';
import 'package:twitter_clone/login.dart';

class TextLink extends StatelessWidget {
  const TextLink({super.key, required this.linkText, required this.isNewPage});

  final String linkText;
  final bool isNewPage;

  void loadNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isNewPage
        ? GestureDetector(
            onTap: () {
              loadNewPage(context);
            },
            child: Text(
              linkText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        : GestureDetector(
            onTap: () {},
            child: Text(
              linkText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
  }
}
