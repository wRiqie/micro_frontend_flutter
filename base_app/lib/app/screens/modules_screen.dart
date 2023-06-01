import 'package:flutter/material.dart';

class ModulesScreen extends StatelessWidget {
  const ModulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha de módulos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(children: [
          _moduleCard(
            context,
            color: Colors.black,
            name: 'Counter GetX',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/counter-getx');
            },
            icon: Icons.fast_forward,
            foregroundColor: Colors.purple
          ),
          const SizedBox(
            width: 12,
          ),
          _moduleCard(
            context,
            color: Colors.white,
            name: 'Counter Cubit',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/counter-cubit');
            },
            icon: Icons.block,
            foregroundColor: Colors.black
          ),
        ]),
      ),
    );
  }

  Widget _moduleCard(
    BuildContext context, {
    required Color color,
    required String name,
    required VoidCallback onTap,
    required IconData icon,
    required Color foregroundColor,
  }) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: foregroundColor,
            ),
            Text(
              name,
              style: TextStyle(color: foregroundColor),
            ),
          ],
        ),
      ),
    );
  }
}
