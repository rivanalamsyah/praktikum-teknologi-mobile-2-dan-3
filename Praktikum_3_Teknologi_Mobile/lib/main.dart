import 'package:flutter/material.dart';
import 'package:praktikum/providers/app_state.dart';
import 'package:praktikum/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(),
        ),
        title: "Rivan Alamsyah",
        home: const HomeScreen(),
      ),
    );
  }
}
