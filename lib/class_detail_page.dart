import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ClassDetailPage extends StatelessWidget {
  final Map<String, String> clase;
  final bool mostrarUnirse;

  const ClassDetailPage({
    super.key,
    required this.clase,
    this.mostrarUnirse = true,
  });

  Map<String, dynamic> getDetallesClase(String nombre) {
    switch (nombre) {
      case "Matemáticas":
        return {
          "horario": "Lunes y Miércoles, 10:00 - 11:30",
          "modalidad": "Presencial",
          "nivel": "Intermedio",
          "fotoClase":
              "https://images.unsplash.com/photo-1503676382389-4809596d5290?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe García es experto en álgebra y geometría, con 15 años de experiencia en secundaria y bachillerato.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/32.jpg",
        };
      case "Ciencias":
        return {
          "horario": "Martes y Jueves, 12:00 - 13:30",
          "modalidad": "Virtual",
          "nivel": "Básico",
          "fotoClase":
              "https://images.unsplash.com/photo-1464983953574-0892a716854b?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "La Profe López es apasionada por la biología y química, y utiliza experimentos interactivos en sus clases.",
          "fotoProfesor": "https://randomuser.me/api/portraits/women/44.jpg",
        };
      case "Historia":
        return {
          "horario": "Viernes, 09:00 - 11:00",
          "modalidad": "Presencial",
          "nivel": "Avanzado",
          "fotoClase":
              "https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Martínez es historiador y escritor, especializado en historia mundial y local.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/65.jpg",
        };
      case "Programación":
        return {
          "horario": "Sábados, 16:00 - 18:00",
          "modalidad": "Virtual",
          "nivel": "Inicial",
          "fotoClase":
              "https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Yu es desarrollador móvil y disfruta enseñando a programar desde cero con ejemplos prácticos.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/12.jpg",
        };
      case "Inglés":
        return {
          "horario": "Lunes y Jueves, 14:00 - 15:30",
          "modalidad": "Virtual",
          "nivel": "Intermedio",
          "fotoClase":
              "https://images.unsplash.com/photo-1503676382389-4809596d5290?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "La Profe Smith es nativa de Londres y especialista en enseñanza de idiomas.",
          "fotoProfesor": "https://randomuser.me/api/portraits/women/68.jpg",
        };
      case "Arte":
        return {
          "horario": "Miércoles, 11:00 - 13:00",
          "modalidad": "Presencial",
          "nivel": "Inicial",
          "fotoClase":
              "https://images.unsplash.com/photo-1464983953574-0892a716854b?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Rivera es artista plástico y fomenta la creatividad en cada clase.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/23.jpg",
        };
      case "Educación Física":
        return {
          "horario": "Martes y Viernes, 08:00 - 09:30",
          "modalidad": "Presencial",
          "nivel": "Básico",
          "fotoClase":
              "https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Torres es entrenador certificado y promueve hábitos saludables.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/45.jpg",
        };
      case "Música":
        return {
          "horario": "Sábados, 10:00 - 12:00",
          "modalidad": "Presencial",
          "nivel": "Todos los niveles",
          "fotoClase":
              "https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Gómez es músico profesional y multiinstrumentista.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/77.jpg",
        };
      case "Filosofía":
        return {
          "horario": "Jueves, 17:00 - 18:30",
          "modalidad": "Virtual",
          "nivel": "Avanzado",
          "fotoClase":
              "https://images.unsplash.com/photo-1513258496099-48168024aec0?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Ortega es doctor en filosofía y apasionado por el debate.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/81.jpg",
        };
      case "Economía":
        return {
          "horario": "Viernes, 15:00 - 16:30",
          "modalidad": "Virtual",
          "nivel": "Intermedio",
          "fotoClase":
              "https://images.unsplash.com/photo-1464983953574-0892a716854b?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor":
              "El Profe Salinas es economista y consultor financiero.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/53.jpg",
        };
      default:
        return {
          "horario": "Consultar",
          "modalidad": "Consultar",
          "nivel": "Consultar",
          "fotoClase":
              "https://images.unsplash.com/photo-1513258496099-48168024aec0?auto=format&fit=crop&w=800&q=80",
          "descripcionProfesor": "Profesor con amplia experiencia.",
          "fotoProfesor": "https://randomuser.me/api/portraits/men/32.jpg",
        };
    }
  }

  Map<DateTime, List<String>> getEventosClase(String nombre) {
    // Hardcodea algunos eventos para cada materia
    final now = DateTime.now();
    switch (nombre) {
      case "Matemáticas":
        return {
          DateTime(now.year, now.month, now.day + 1): ["Álgebra"],
          DateTime(now.year, now.month, now.day + 3): ["Geometría"],
          DateTime(now.year, now.month, now.day + 8): ["Trigonometría"],
        };
      case "Ciencias":
        return {
          DateTime(now.year, now.month, now.day + 2): ["Biología"],
          DateTime(now.year, now.month, now.day + 4): ["Química"],
        };
      case "Historia":
        return {
          DateTime(now.year, now.month, now.day + 1): ["Historia Mundial"],
          DateTime(now.year, now.month, now.day + 7): ["Historia Local"],
        };
      case "Programación":
        return {
          DateTime(now.year, now.month, now.day + 2): ["Dart Básico"],
          DateTime(now.year, now.month, now.day + 9): ["Flutter Widgets"],
        };
      case "Inglés":
        return {
          DateTime(now.year, now.month, now.day + 3): ["Conversación"],
          DateTime(now.year, now.month, now.day + 10): ["Gramática"],
        };
      case "Arte":
        return {
          DateTime(now.year, now.month, now.day + 4): ["Pintura"],
          DateTime(now.year, now.month, now.day + 11): ["Escultura"],
        };
      case "Educación Física":
        return {
          DateTime(now.year, now.month, now.day + 1): ["Fútbol"],
          DateTime(now.year, now.month, now.day + 8): ["Atletismo"],
        };
      case "Música":
        return {
          DateTime(now.year, now.month, now.day + 5): ["Teoría musical"],
          DateTime(now.year, now.month, now.day + 12): ["Instrumentos"],
        };
      case "Filosofía":
        return {
          DateTime(now.year, now.month, now.day + 6): ["Sócrates"],
          DateTime(now.year, now.month, now.day + 13): ["Nietzsche"],
        };
      case "Economía":
        return {
          DateTime(now.year, now.month, now.day + 7): ["Microeconomía"],
          DateTime(now.year, now.month, now.day + 14): ["Finanzas personales"],
        };
      default:
        return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    final detalles = getDetallesClase(clase['nombre'] ?? "");
    final String horario = detalles["horario"];
    final String modalidad = detalles["modalidad"];
    final String nivel = detalles["nivel"];
    final String fotoClase = detalles["fotoClase"];
    final String descripcionProfesor = detalles["descripcionProfesor"];
    final String fotoProfesor = detalles["fotoProfesor"];

    final eventos = getEventosClase(clase['nombre'] ?? "");
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDay;

    return FutureBuilder(
      future: initializeDateFormatting('es_ES', null),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(clase['nombre']!),
            backgroundColor: Colors.purple,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen de cabecera
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                  child: Image.network(
                    fotoClase,
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Título y chips
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              clase['nombre']!,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          const Icon(Icons.star, color: Colors.amber, size: 28),
                          const SizedBox(width: 4),
                          const Text("4.8",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 10,
                        children: [
                          Chip(
                            avatar: const Icon(Icons.schedule,
                                size: 18, color: Colors.white),
                            label: Text(horario,
                                style: const TextStyle(color: Colors.white)),
                            backgroundColor: Colors.purple,
                          ),
                          Chip(
                            avatar: const Icon(Icons.school,
                                size: 18, color: Colors.white),
                            label: Text(nivel,
                                style: const TextStyle(color: Colors.white)),
                            backgroundColor: Colors.green,
                          ),
                          Chip(
                            avatar: const Icon(Icons.computer,
                                size: 18, color: Colors.white),
                            label: Text(modalidad,
                                style: const TextStyle(color: Colors.white)),
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      // Descripción de la clase
                      Text(
                        clase['detalle'] ?? "Sin descripción disponible",
                        style: const TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                      const SizedBox(height: 30),
                      // Sobre el profesor
                      const Text(
                        "Sobre el profesor",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(fotoProfesor),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  clase['profesor'] ?? "Profesor desconocido",
                                  style: const TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  descripcionProfesor,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      if (mostrarUnirse)
                        Center(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 14),
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () {
                              Navigator.pop(context, clase); // Devuelve la clase para añadir
                            },
                            icon: const Icon(Icons.group_add, color: Colors.white),
                            label: const Text("Unirse a la clase"),
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Calendario de clases",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      const SizedBox(height: 12),
                      StatefulBuilder(
                        builder: (context, setState) {
                          return TableCalendar(
                            firstDay:
                                DateTime.now().subtract(const Duration(days: 30)),
                            lastDay:
                                DateTime.now().add(const Duration(days: 365)),
                            focusedDay: _focusedDay,
                            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                            eventLoader: (day) => eventos[
                                    DateTime(day.year, day.month, day.day)] ?? [],
                            calendarStyle: const CalendarStyle(
                              defaultTextStyle: TextStyle(color: Colors.blue),
                              weekendTextStyle: TextStyle(color: Colors.red),
                              todayDecoration: BoxDecoration(
                                color: Colors.purpleAccent,
                                shape: BoxShape.circle,
                              ),
                              selectedDecoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            onDaySelected: (selectedDay, focusedDay) {
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                              });
                            },
                            locale: 'es_ES',
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      if (_selectedDay != null &&
                          (eventos[DateTime(_selectedDay!.year, _selectedDay!.month,
                                      _selectedDay!.day)]?.isNotEmpty ??
                                  false))
                        ...eventos[DateTime(_selectedDay!.year, _selectedDay!.month,
                                    _selectedDay!.day)]!
                            .map((evento) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.event,
                                          color: Colors.purple, size: 20),
                                      const SizedBox(width: 8),
                                      Text(evento,
                                          style: const TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                )),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
