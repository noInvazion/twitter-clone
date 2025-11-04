import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:twitter_clone/firebase_options.dart';
import 'package:twitter_clone/auth/pages/home.dart';
import 'package:twitter_clone/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}
