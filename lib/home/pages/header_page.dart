import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // For You + Following
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 30,
                left: 15, 
                right: 15, 
                bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // profile picture
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        'assets/images/home/profile_pictures/cat-pfp.jpg',
                      ),
                    ),

                    const Spacer(flex: 1),

                    // X icon
                    Image.asset('assets/images/twitter.png', width: 20),

                    const Spacer(flex: 1),

                    // Settings icon at the end
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/home/setting.png',
                        width: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // --- TABS ---
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blueAccent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(
                        child: Text(
                          "For you",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Following",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // --- TAB CONTENT (This replaces your manual switching) ---
          Expanded(
            child: TabBarView(
              children: [
                // PAGE 1: For You
                Center(child: Text("For You Page Content")),

                // PAGE 2: Following
                Center(child: Text("Following Page Content")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
