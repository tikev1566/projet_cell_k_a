import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String mainMenu = '/main-menu';
  static const String login = '/login';
  static const String register = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Route not found: \'${settings.name}\''),
            ),
          ),
          settings: settings,
        );
    }
  }
}
