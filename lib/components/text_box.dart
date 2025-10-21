import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key, required this.hintText});

  final String hintText;
  // final TextInputType? keyboardType;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20) ,
      child: TextField(
        // controller: _userInfo;
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 171, 169, 169)
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.lightBlue,
            )
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.blueGrey,
          )
        ),
        keyboardType: TextInputType.twitter, // keyboard type...
      
      ),
    );
  }
}