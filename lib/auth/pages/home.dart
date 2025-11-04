import 'package:flutter/material.dart';
import 'package:twitter_clone/auth/pages/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Image.asset("assets/images/twitter.png", width: 20),

        SizedBox(height: 350),

        HomeContent(),
      ],
    );
  }
}
