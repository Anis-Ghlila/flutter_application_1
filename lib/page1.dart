import 'package:flutter/material.dart';
import 'drawer_layout.dart'; // Assure-toi d'importer drawer_layout.dart

class MaPremierePage extends StatelessWidget {
  const MaPremierePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: AppBar(
        title: const Text('Premiére page'),
        backgroundColor: const Color.fromARGB(255, 50, 182, 151),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bonjour IIT',
              style: TextStyle(color: Color.fromARGB(216, 230, 7, 7)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/deuxieme');
              },
              child: const Text('Aller à la deuxième page'),
            ),
          ],
        ),
      ),
    );
  }
}
