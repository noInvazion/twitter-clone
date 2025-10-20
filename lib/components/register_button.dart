import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(this.iconImage, {super.key, required this.buttonText, required this.isDarkThemed});

  final bool isDarkThemed;
  final String buttonText;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    if (iconImage == "") {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: Size.fromWidth(
            350,
          ), // find a better way to adjust the button width...
          backgroundColor: Colors.black,
          side: const BorderSide(color: Color.fromARGB(255, 222, 216, 216)),
        ),
        onPressed: () {},
        child: Text(buttonText, style: TextStyle(color: Colors.white)),
      );
    } else {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: Size.fromWidth(350,),// find a better way to adjust the button width...
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
