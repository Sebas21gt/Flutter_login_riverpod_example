import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Obtenemos el estado actual de autenticación
    final authState = ref.watch(authProvider);
    // Obtenemos el notifier para manejar la lógica de autenticación
    final authNotifier = ref.read(authProvider.notifier);

    // Controladores para los campos de texto
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo de texto para el nombre de usuario
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            // Campo de texto para la contraseña
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            // Botón de inicio de sesión
            ElevatedButton(
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;
                // Llamamos al método login del notifier
                authNotifier.login(username, password);
              },
              child: const Text('Login'),
            ),
            // Muestra el mensaje de error si existe
            if (authState.errorMessage != null) ...[
              const SizedBox(height: 20),
              Text(
                authState.errorMessage!,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
