import 'package:flutter/material.dart';

import 'page1.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  //st takhtar biha el structure stateless wala statefull
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma premiére application',
      // routes: ,
      home: MaPremierePage(),
    ); // hethy el widget el kbira
  }
}
