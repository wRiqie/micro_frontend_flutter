import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saiba mais'),
      ),
      body: const Center(
        child: Text('Mais informações em breve'),
      ),
    );
  }
}
