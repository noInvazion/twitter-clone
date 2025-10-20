import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final String userDetails;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/twitter.png", width: 20),
                ],
              ),

              SizedBox(height: 50),

              Text("To get started, first enter your phone,\nemail address or @username",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  // controller: userDetails,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    hintText: "Phone, email address, or username",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14,
                    ),
                  ),
                  
                ),
              )
            ],
          ),
        ),
    );
  }
}
