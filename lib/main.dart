import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma première application',
      initialRoute: '/',
      routes: {
        '/': (context) => const MaPremierePage(),
        '/deuxieme': (context) => const DeuxiemePage(),
        '/premiere': (context) => const MaPremierePage(),
      },
    );
  }
}
