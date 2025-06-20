import 'package:flutter/material.dart';

class ClassroomPage extends StatelessWidget {
  final String className;
  final String teacher;

  const ClassroomPage({
    super.key,
    required this.className,
    required this.teacher,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(className),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clase: $className', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text('Profesor: $teacher', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            const Text('Aquí va el contenido de la clase 🧠', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
