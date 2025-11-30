import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showNotImplemented(BuildContext context, String featureName) {
    // TODO: Implement real navigation and features in future steps.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$featureName n\'est pas encore disponible (étape 1).'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duel Arena'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildMenuButton(
                context: context,
                label: 'Se connecter',
                icon: Icons.login,
              ),
              const SizedBox(height: 16),
              _buildMenuButton(
                context: context,
                label: 'Combat rapide (local)',
                icon: Icons.sports_martial_arts,
              ),
              const SizedBox(height: 16),
              _buildMenuButton(
                context: context,
                label: 'Classement',
                icon: Icons.leaderboard,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton({
    required BuildContext context,
    required String label,
    required IconData icon,
  }) {
    return SizedBox(
      height: 60,
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 24),
        label: Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        onPressed: () => _showNotImplemented(context, label),
      ),
    );
  }
}
