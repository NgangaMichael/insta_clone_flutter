import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/toogle_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<Widget> tabs = const [
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> tabBarviews = const [
    FeedView(),
    ReelsView(),
    ToogleView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text('364',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('Following',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 116, 115, 115)
                        ),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('lib/images/in4.jpg',
                        ),
                      ),
                    ),
                  ),

                  const Column(
                    children: [
                      Text('24.5k',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 7),
                      Text('Followers',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 116, 115, 115)
                        ),
                      )
                    ],
                  )
                ],
              ),

              const SizedBox(height: 20),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Michael Nganga', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(' | '),
                  Text('Software Developer', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),

              const SizedBox(height: 10),

              Text('Web & Mobile Developer', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold)),

              const SizedBox(height: 10),
              
              const Text('www.michael.netlifyapp.com', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Center(
                          child: Text('Edit Profile',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
              
                    const SizedBox(width: 20),
              
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Center(
                          child: Text('Contact',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              TabBar(tabs: tabs),
              Expanded(child: TabBarView(children: tabBarviews))
            ],
          ),
        ),
      ),
    );
  }
}