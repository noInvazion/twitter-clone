import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/auth/components/return_button.dart';
import 'package:twitter_clone/auth/pages/login_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userDetails = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _userDetails.dispose();
  }

  /*
Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  */

  // authUser() async {
  //   String userDetails = _userDetails.text.trim();
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _userDetails.text, 
  //     password: password)
  // }


  authEmail() {
    String userDetails = _userDetails.text.trim();
    if (userDetails.contains('@gmail.com')){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPassword(userDetails: userDetails,)),
      );
    }

    return userDetails;
      
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
                  "To get started, first enter your phone,\nemail address or @username",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
            
                SizedBox(height: 50),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _userDetails,
                    decoration: InputDecoration(
                      hintText: "Phone, email address, or username",
                    ),
                  ),
                ),
            
                SizedBox(height: 520),
            
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
                            onPressed: () {
                              authEmail();
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Next")),
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
