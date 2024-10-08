import 'package:flutter/material.dart';
import 'Screens/main_landing_screen.dart';
import 'package:next_round/Screens/main_landing_screen.dart';
import 'package:next_round/Screens/questions_bookmark_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> widgetOptions = [
    MainLandingScreen(),
    BookmarkListScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nextround",
      home: Scaffold(
        body: Center(child: widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon (Icons.menu_book_sharp),
                label: "Learning"),
            BottomNavigationBarItem(icon: Icon (Icons.bookmarks),
                label: "Bookmark")

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black87,
          onTap: _onItemTapped,
        ),

      ),
    );
  }
}
