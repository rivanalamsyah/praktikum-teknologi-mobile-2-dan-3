import 'package:flutter/material.dart';
import 'package:praktikum/providers/app_state.dart';
import 'package:praktikum/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        title: "Rivan Alamsyah / 2100016103",
        home: const HomeScreen(),
      ),
    );
  }
}
