import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  const TextLink({super.key, required this.linkText});

  final String linkText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap:() {},
                  child: Text(linkText, 
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),),
                );
  }
}