import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/signup.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(this.iconImage, {super.key, 
  required this.buttonText, 
  required this.isDarkThemed, 
  required this.buttonSize});

  final bool isDarkThemed;
  final String buttonText;
  final String iconImage;
  final double buttonSize;

  void loadNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Signup()),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (iconImage == "") {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: Size.fromWidth(
            buttonSize,
          ), // find a better way to adjust the button width...
          backgroundColor: Colors.black,
          side: const BorderSide(color: Color.fromARGB(255, 222, 216, 216)),
        ),
        onPressed: () {loadNewPage(context);},
        child: Text(buttonText, style: TextStyle(color: Colors.white)),
      );
    } else {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: Size.fromWidth(buttonSize,),// find a better way to adjust the button width...
          side: const BorderSide(color: Color.fromARGB(255, 222, 216, 216)),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconImage,
            width: 20,),

            SizedBox(width: 10,),
            Text(buttonText, style: TextStyle(color: Colors.black)),
          ],
        ),
      );
    }
  }
}
