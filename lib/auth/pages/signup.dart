import 'package:flutter/material.dart';
import 'package:twitter_clone/auth/components/register_button.dart';
import 'package:twitter_clone/auth/components/return_button.dart';
import 'package:twitter_clone/auth/components/text_box.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _dobController = TextEditingController();

    void signup() {
      // Signup logic here
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReturnButton(),
                    SizedBox(width: 120),
                    Image.asset("assets/images/twitter.png", width: 20),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Create your account",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 250),

              TextBox(
                hintText: "Name",
                controller: _nameController,
                keyboardType: TextInputType.name,
              ),
              TextBox(
                hintText: "Email",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ), 
              TextBox(
                hintText: "Date of birth",
                controller: _dobController,
                keyboardType: TextInputType.none,
              ),

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
                      buttonSize: 100,
                      onPressed: signup,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
