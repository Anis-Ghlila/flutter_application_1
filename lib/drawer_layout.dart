import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget body; // Le corps de la page
  final FloatingActionButton? floatingActionButton; // Ajout du bouton flottant
  final AppBar? appBar; // Barre d'outrepassage

  const BasePage(
      {Key? key, required this.body, this.floatingActionButton, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 182, 151),
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
                Navigator.pushNamed(context, '/premiere');
              },
            ),
            ListTile(
              leading: const Icon(Icons.navigate_next),
              title: const Text('Aller à la deuxième page'),
              onTap: () {
                // Navigator.pop(context); // Ferme le Drawer
                Navigator.pushNamed(
                    context, '/deuxieme'); // Utilise la navigation nommée
              },
            ),
          ],
        ),
      ),
      body: body, // Utilise le corps passé en paramètre
      floatingActionButton: floatingActionButton, // Ajoute le bouton flottant
    );
  }
}
