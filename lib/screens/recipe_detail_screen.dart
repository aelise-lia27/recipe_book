import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail d\nune recette r')),
      body: const Center(
        child: Text('Bienvenue dans Recipe App'),
      ),
    );
  }
}