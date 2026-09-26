import 'package:flutter/material.dart';

void main() {
  runApp(const LocalSwapApp());
}

class LocalSwapApp extends StatelessWidget {
  const LocalSwapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Nom affiché par le système d'exploitation / gestionnaire de tâches
      title: 'LocalSwap',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // On définit directement notre écran d'accueil minimal
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Titre demandé pour l'écran d'accueil
        title: const Text('LocalSwap'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur LocalSwap !\nLe troc et l\'entraide de quartier.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
