import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Avatar
            Container(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(221, 205, 205, 1),
                    Color.fromARGB(255, 252, 252, 252)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('lib/assets/F2.jpg'),
              ),
            ),
            // User details
            Column(
              children: [
                Text(
                  'Flor Rodriguez Baltazar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  '20 - Trujillo - Porvenir',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            // Stats
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Friends
                  Column(
                    children: [
                      Icon(Icons.people, size: 24, color: Colors.blue),
                      Text('Amigos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      Text('500'),
                    ],
                  ),
                  // Mensajes
                  Column(
                    children: [
                      Icon(Icons.message, size: 24, color: Colors.green),
                      Text('Mensajes',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      Text('20'),
                    ],
                  ),
                  // Publicaciones
                  Column(
                    children: [
                      Icon(Icons.article, size: 24, color: Colors.orange),
                      Text('Publicaciones',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      Text('10'),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Botón Conectar con icono de usuario
                  ElevatedButton.icon(
                    icon: const Icon(
                      FontAwesomeIcons.user,
                      size: 16,
                    ),
                    label: const Text('Contacto'),
                    onPressed: () {},
                  ),
                  // Botón Mensaje con icono de mensaje
                  ElevatedButton.icon(
                    icon: const FaIcon(
                      FontAwesomeIcons.envelope,
                      size: 16,
                    ),
                    label: const Text('Mensaje'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
