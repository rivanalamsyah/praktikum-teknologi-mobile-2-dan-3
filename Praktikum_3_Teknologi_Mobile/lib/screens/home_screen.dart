import 'package:flutter/material.dart';
import 'package:praktikum/providers/app_state.dart';
import 'package:praktikum/screens/favorite_screen.dart';
import 'package:praktikum/screens/random_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorite",
      ),
    ];

    List<Widget> screens = [
      RandomScreen(pair: pair, appState: appState, icon: icon),
      const FavoriteScreen()
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rivan Alamsyah - 2100016103",
          style: TextStyle(color: Color.fromARGB(255, 1, 84, 180)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: screens[currentIndex],
    );
  }
}
