import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConvivenciaScreen extends StatelessWidget {
  const ConvivenciaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONVIVENCIA"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "expulsados_screen"),
            child: const Card(
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.boxes),
                title: Text('Expulsados'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "mayores_screen"),
            child: const Card(
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.braille),
                title: Text('Mayores'),
              ),
            ),
          ),
           GestureDetector(
            onTap: () => Navigator.pushNamed(context, "reflexion_screen"),
            child: const Card(
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.sadCry),
                title: Text('Aula Reflexión'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
