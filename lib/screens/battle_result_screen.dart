import 'package:flutter/material.dart';
import 'main_menu_screen.dart';

class BattleResultScreen extends StatelessWidget {
  const BattleResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultat du duel'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.emoji_events, size: 48, color: Colors.teal),
              const SizedBox(height: 16),
              const Text(
                'Le vainqueur est affiché ici.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const MainMenuScreen()),
                    (route) => route.isFirst,
                  );
                },
                child: const Text('Retour au menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
