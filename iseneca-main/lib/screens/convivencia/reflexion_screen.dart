import 'dart:html';

import 'package:flutter/material.dart';
import 'package:iseneca/models/models.dart';
import 'package:iseneca/providers/alumnado_provider.dart';
import 'package:provider/provider.dart';

class ReflexionScreen extends StatelessWidget{

  const ReflexionScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ReflexionScreen(),
    );
  }
}

class _ReflexionScreen extends StatefulWidget {
  const _ReflexionScreen();

  @override
  State<_ReflexionScreen> createState() => _ReflexionScreenState();
}

enum YesNo{ si, no }

class _ReflexionScreenState extends State<_ReflexionScreen> {
  @override
  Widget build(BuildContext context) {

    
    final datosAlumnosProvider = Provider.of<AlumnadoProvider>(context);
    final listadoAlumnos = datosAlumnosProvider.listadoAlumnos;
    
    YesNo selectedOption = YesNo.si;


    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTRAR AULA DE REFLEXIÓN"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                       const Text(
                          "Alumno en aula",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 20, 80, 40),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(filled: true,fillColor: Colors.white.withOpacity(0.70), hintText: "Elige", hintStyle: const TextStyle(color: Colors.black)),
                          borderRadius: BorderRadius.circular(10),
                          
                          items: listadoAlumnos.map((e){
                            return DropdownMenuItem(
                              value: e,
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "${e.nombre} / ${e.curso}",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (DatosAlumnos? value) {},
                          isDense: true,
                          isExpanded: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                       const Text(
                          "¿Hace tareas?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 20, 80, 40),
                        child: Column(
                          children: [
                            RadioListTile(
                              tileColor: Colors.white,
                              title: const Text("Sí", style: TextStyle(color:Colors.white)),
                              value: YesNo.si, 
                              groupValue: selectedOption, 
                              onChanged: (value) => setState(() {
                                selectedOption = YesNo.si;
                              }),
                            ),
                            RadioListTile(
                              tileColor: Colors.white,
                              title: const Text("No", style: TextStyle(color:Colors.white)),
                              value: YesNo.no, 
                              groupValue: selectedOption, 
                              onChanged: (value) => setState(() {
                                selectedOption = YesNo.no;
                              }),
                            )
                          ],
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )         
        ],
      ),
    );
  }
}
