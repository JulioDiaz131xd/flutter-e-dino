import 'package:flutter/material.dart';
import 'segarrum_page.dart';
import 'class_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> clasesUnidas = [];

  void agregarClase(Map<String, String> clase) {
    if (!clasesUnidas.any((c) => c['nombre'] == clase['nombre'])) {
      setState(() {
        clasesUnidas.add(clase);
      });
    }
  }

  void eliminarClase(String nombreClase) {
    setState(() {
      clasesUnidas.removeWhere((c) => c['nombre'] == nombreClase);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Dino - Dashboard"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "👨‍🎓 Tus clases",
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: clasesUnidas.isEmpty
                    ? const Center(
                        child: Text("Aún no estás en ninguna clase", style: TextStyle(color: Colors.white)),
                      )
                    : ListView.builder(
                        itemCount: clasesUnidas.length,
                        itemBuilder: (context, index) {
                          final clase = clasesUnidas[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: ListTile(
                              title: Text(clase['nombre']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text(clase['detalle'] ?? "Sin descripción"),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                child: const Text("Salirse"),
                                onPressed: () {
                                  eliminarClase(clase['nombre']!);
                                },
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ClassDetailPage(
                                      clase: clase,
                                      mostrarUnirse: false,
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
              ),
              const Divider(color: Colors.white),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                icon: const Icon(Icons.add, color: Colors.green),
                label: const Text("Añadir clases", style: TextStyle(color: Colors.green)),
                onPressed: () async {
                  final claseSeleccionada = await Navigator.push<Map<String, String>>(
                    context,
                    MaterialPageRoute(builder: (_) => const SegarrumPage()),
                  );
                  if (claseSeleccionada != null) {
                    agregarClase(claseSeleccionada);
                  }
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
