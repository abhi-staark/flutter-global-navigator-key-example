import 'package:flutter/material.dart';

// Global navigator key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _goToSecondScreen() {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (_) => const SecondScreen()),
    );
  }

  void _showDialog() {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (_) => const AlertDialog(
        title: Text('Hello from Global Context!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _goToSecondScreen,
              child: const Text('Navigate Without Context'),
            ),
            ElevatedButton(
              onPressed: _showDialog,
              child: const Text('Show Dialog Without Context'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: const Center(child: Text('You made it here!')),
    );
  }
}
