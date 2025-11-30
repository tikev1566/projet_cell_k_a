import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const DuelArenaApp());
}

class DuelArenaApp extends StatelessWidget {
  const DuelArenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duel Arena',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
