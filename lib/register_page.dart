import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

Future<void> _register() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('user', _userCtrl.text);
  await prefs.setString('pass', _passCtrl.text);
  await prefs.setString('name', _userCtrl.text); // 🔥 guarda el nombre

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text("Registro exitoso. Ahora inicia sesión.")),
  );

  Navigator.pop(context);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Registro E-Dino", style: TextStyle(fontSize: 28, color: Colors.purple, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              TextField(
                controller: _userCtrl,
                decoration: const InputDecoration(labelText: 'Usuario'),
              ),
              TextField(
                controller: _passCtrl,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Contraseña'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text("Registrarse"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
