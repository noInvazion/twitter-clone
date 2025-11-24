import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_clone/home/pages/header_page.dart';
// import 'package:twitter_clone/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // String? userName = FirebaseAuth.instance.currentUser?.email;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HeaderPage(),
        
                // ElevatedButton(
                //   onPressed: () async {
                //     await FirebaseAuth.instance.signOut();
                //     Navigator.push(
                //       context, 
                //       MaterialPageRoute(builder: (context) => const MyApp()));
                //   },
                //   child: Text("Sign Out"),
                // ),
          
          ),
        ),
      );
  }
}