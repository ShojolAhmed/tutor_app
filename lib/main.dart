import 'package:flutter/material.dart';
import 'package:tutor_app/screens/chat_screen.dart';
import 'package:tutor_app/screens/home_screen.dart';
import 'package:tutor_app/screens/topic_screen.dart';
import 'package:tutor_app/screens/tution_screen.dart';
import 'package:tutor_app/screens/tutor_screen.dart';
import 'package:tutor_app/theme/theme_constant.dart';
import 'package:tutor_app/widgets/app_bar/app_bar_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    const appBar = [
      null,
      DefaultAppBarBuilder(),
      DefaultAppBarBuilder(),
      DefaultAppBarBuilder(),
      null,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        // App Bar
        appBar: appBar[currentPageIndex],

        // Body
        body: SafeArea(
          child: IndexedStack(
            index: currentPageIndex,
            children: const [
              HomeScreen(),
              TutorScreen(),
              TutionScreen(),
              TopicScreen(),
              ChatScreen(),
            ],
          ),
        ),

        // Bottom Navigation Bar
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.menu_book_rounded),
              label: 'Tutor',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_search_rounded),
              label: 'Tution',
            ),
            NavigationDestination(
              icon: Icon(Icons.topic_rounded),
              label: 'Topic',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_rounded),
              label: 'Chat',
            ),
          ],
          onDestinationSelected: (index) => setState(
            () {
              currentPageIndex = index;
            },
          ),
        ),
      ),
    );
  }
}
