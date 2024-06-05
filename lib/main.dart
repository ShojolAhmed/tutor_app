import 'package:flutter/material.dart';
import 'package:tutor_app/screens/chat_screen.dart';
import 'package:tutor_app/screens/home_screen.dart';
import 'package:tutor_app/screens/topic_screen.dart';
import 'package:tutor_app/screens/tution_screen.dart';
import 'package:tutor_app/screens/tutor_screen.dart';
import 'package:tutor_app/theme/theme_constant.dart';
import 'package:tutor_app/widgets/custom_icon_button.dart';

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
    final theme = Theme.of(context);
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    var defaultAppBar = AppBar(
      scrolledUnderElevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: isDarkMode
                    ? theme.colorScheme.onSurfaceVariant.withOpacity(.5)
                    : theme.colorScheme.surfaceContainerHighest.withOpacity(.7),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const CustomIconButtom(
            iconData: Icons.notifications,
          ),
          const CustomIconButtom(
            iconData: Icons.person_rounded,
          ),
        ],
      ),
    );
    final appBar = [null, defaultAppBar, defaultAppBar, defaultAppBar, null];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: appBar[currentPageIndex],
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
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.menu_book_rounded), label: 'Tutor'),
            NavigationDestination(
                icon: Icon(Icons.person_search_rounded), label: 'Tution'),
            NavigationDestination(
                icon: Icon(Icons.topic_rounded), label: 'Topic'),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_rounded),
              label: 'Chat',
            ),
          ],
          onDestinationSelected: (index) => setState(() {
            currentPageIndex = index;
          }),
        ),
      ),
    );
  }
}
