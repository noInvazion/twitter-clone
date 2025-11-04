import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/auth/components/return_button.dart';
import 'package:twitter_clone/layouts/pages/home_page.dart';

class LoginPassword extends StatefulWidget {
  const LoginPassword({
    required this.userDetails,
    super.key
    });

    final String userDetails;
  @override
  State<LoginPassword> createState() => _LoginPasswordState();
}

class _LoginPasswordState extends State<LoginPassword> {
  final TextEditingController _userPassword = TextEditingController();

  signIn() async {
    String password = _userPassword.text.trim();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: widget.userDetails,
      password: password);
      Navigator.push(
        context,
        MaterialPageRoute(builder:(context) => Home())
      );
  }

  @override
  void dispose() {
    super.dispose();
    _userPassword.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReturnButton(),
                    SizedBox(width: 150),
                    Image.asset("assets/images/twitter.png", width: 20)],
                ),
            
                SizedBox(height: 50),
            
                Text(
                  "Enter your password",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
            
                SizedBox(height: 50),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: widget.userDetails,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _userPassword,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
            
                SizedBox(height: 450),
            
                Divider(height: 1, color: Colors.grey),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ), 
                        child: Text("Forgot password?"),
                      ),

                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: signIn,
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Login")),
                        ],
                      )
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