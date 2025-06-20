import 'package:flutter/material.dart';
import 'class_detail_page.dart';

class SegarrumPage extends StatelessWidget {
  const SegarrumPage({super.key});

  final List<Map<String, String>> clasesDisponibles = const [
    {
      "nombre": "Matemáticas",
      "profesor": "Profe García",
      "detalle": "Aprende álgebra, geometría y más."
    },
    {
      "nombre": "Ciencias",
      "profesor": "Profe López",
      "detalle": "Explora física, química y biología."
    },
    {
      "nombre": "Historia",
      "profesor": "Profe Martínez",
      "detalle": "Descubre la historia mundial y local."
    },
    {
      "nombre": "Programación",
      "profesor": "Profe Yu",
      "detalle": "Introducción a Dart y Flutter."
    },
    {
      "nombre": "Inglés",
      "profesor": "Profe Smith",
      "detalle": "Mejora tu inglés conversacional y gramatical."
    },
    {
      "nombre": "Arte",
      "profesor": "Profe Rivera",
      "detalle": "Expresa tu creatividad con pintura y escultura."
    },
    {
      "nombre": "Educación Física",
      "profesor": "Profe Torres",
      "detalle": "Ejercicios, deportes y vida saludable."
    },
    {
      "nombre": "Música",
      "profesor": "Profe Gómez",
      "detalle": "Aprende teoría musical y toca instrumentos."
    },
    {
      "nombre": "Filosofía",
      "profesor": "Profe Ortega",
      "detalle": "Reflexiona sobre grandes pensadores y dilemas."
    },
    {
      "nombre": "Economía",
      "profesor": "Profe Salinas",
      "detalle": "Conceptos básicos de economía y finanzas personales."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Explorar clases"), backgroundColor: Colors.purple),
      body: ListView.builder(
        itemCount: clasesDisponibles.length,
        itemBuilder: (context, index) {
          final clase = clasesDisponibles[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              leading: const Icon(Icons.book, color: Colors.purple),
              title: Text(clase['nombre']!),
              subtitle: Text("Profesor: ${clase['profesor']}"),
              onTap: () async {
                final resultado = await Navigator.push<Map<String, String>>(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ClassDetailPage(
                      clase: clase,
                      mostrarUnirse: true,
                    ),
                  ),
                );
                if (resultado != null) {
                  Navigator.pop(context, resultado);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
