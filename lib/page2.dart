import 'package:flutter/material.dart';

class DeuxiemePage extends StatefulWidget {
  const DeuxiemePage({super.key});

  @override
  _DeuxiemePageState createState() => _DeuxiemePageState();
}

class _DeuxiemePageState extends State<DeuxiemePage> {
  bool _showImage = false; // État pour contrôler l'affichage de l'image

  void _toggleImage() {
    setState(() {
      _showImage = !_showImage; // Inverser l'état de l'image
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deuxième page'),
        backgroundColor: const Color.fromARGB(255, 50, 182, 151),
      ),
      body: Center(
        child: _showImage
            ? Image(
                image: AssetImage(
                    'lib/assets/sunrise1.jpg'), // Utilisation correcte d'AssetImage
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return const Text(
                      'Erreur de chargement de l\'image'); // Message d'erreur
                },
              )
            : const Text(
                'Appuie sur le bouton pour voir l\'image', // Message par défaut
                style: TextStyle(fontSize: 18),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleImage, // Appelle la fonction pour changer l'état
        child: const Text('Click'), // Texte du bouton
        backgroundColor: Colors.blue, // Choisir une couleur d'arrière-plan
      ),
    );
  }
}
