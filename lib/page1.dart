import 'package:flutter/material.dart';
import 'page2.dart'; // Assure-toi d'importer page2.dart

class MaPremierePage extends StatelessWidget {
  const MaPremierePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma première page'),
        backgroundColor: const Color.fromARGB(255, 50, 182, 151),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bonjour IIT',
              style: TextStyle(color: Color.fromARGB(216, 230, 7, 7)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DeuxiemePage()),
                );
              },
              child: Text('Aller à la deuxième page'),
            ),
          ],
        ),
      ),
    );
  }
}
