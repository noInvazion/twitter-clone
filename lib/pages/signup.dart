import 'package:flutter/material.dart';
import 'package:twitter_clone/components/register_button.dart';
import 'package:twitter_clone/components/text_box.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/twitter.png", width: 20)],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Create your account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ],
                ),
              ), 

              SizedBox(height: 250,),

              TextBox(hintText: "Name", ), // keyboard type...
              TextBox(hintText: "Email"),
              TextBox(hintText: "Date of birth"),

              Spacer(),

              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RegisterButton(
                      "",
                      buttonText: "Next", 
                      isDarkThemed: true,
                      buttonSize: 100,)
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
