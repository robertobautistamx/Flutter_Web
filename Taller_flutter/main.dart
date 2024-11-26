// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de proyectos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Container(
              width: 250,
              color: Colors.teal[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  botton(Icons.dashboard, 'Proyectos', () {}),
                  botton(Icons.folder, 'Mis documentos', () {}),
                  botton(Icons.group, 'Equipo', () {}),
                  const Spacer(),
                  botton(Icons.settings, 'Configuración', () {}),
                  botton(Icons.people, 'Invitar usuarios', () {}),
                  botton(Icons.add_box, 'Nuevo documento', () {}),
                  botton(Icons.add, 'Nuevo proyecto', () {}),
                  botton(Icons.exit_to_app, 'Cerrar sesion', () {}),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Encabezado
                    const Row(
                      children: [
                        Text(
                          'Panel de proyectos',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.link, size: 30),
                        SizedBox(width: 10),
                        Text('Compartir'),
                        SizedBox(width: 20),
                        Icon(Icons.more_vert, size: 30),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            nota(
                              title: 'Taller: Flutter_web',
                              content:
                                  'Enseñar a los estudiantes manejar la aplicación "Flutter" en visual studio code, realización de prácticas.',
                              color: Colors.pink[100],
                            ),
                            nota(
                              title: 'Figma',
                              content: 'Descripción de la nota 2.',
                              color: Colors.blue[100],
                            ),
                            nota(
                              title: 'Nota 3',
                              content: 'Descripción de la nota 3.',
                              color: Colors.orange[100],
                            ),
                            nota(
                              title: 'Nota 4',
                              content: 'Descripción de la nota 4.',
                              color: Colors.green[100],
                            ),
                            nota(
                              title: 'Nota 5',
                              content: 'Descripción de la nota 5.',
                              color: Colors.blueGrey[100],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }

  Widget nota({required String title, required String content, Color? color}) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 250,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  content,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Editar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, color: Colors.teal),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
