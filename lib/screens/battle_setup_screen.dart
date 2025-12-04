import 'package:flutter/material.dart';
import 'battle_result_screen.dart';

class BattleSetupScreen extends StatelessWidget {
  const BattleSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Préparer le duel'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Choisissez vos attaques et parades.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(
                  5,
                  (index) => Chip(
                    label: Text('Action ${index + 1}'),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const BattleResultScreen()),
                  );
                },
                child: const Text('Lancer le duel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
