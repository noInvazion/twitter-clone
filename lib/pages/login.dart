import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final String userDetails;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset("assets/images/twitter.png", width: 20)],
                ),
            
                SizedBox(height: 50),
            
                Text(
                  "To get started, first enter your phone,\nemail address or @username",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
            
                SizedBox(height: 50),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    // controller: userDetails,
                    decoration: InputDecoration(
                      fillColor: Colors.blueGrey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      hintText: "Phone, email address, or username",
                      hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 14),
                    ),
                  ),
                ),
            
                SizedBox(height: 550),
            
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
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                            onPressed: (){},
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
