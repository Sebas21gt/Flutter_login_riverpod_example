import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'providers/auth_provider.dart';

void main() {
  // El ProviderScope es necesario para que los widgets puedan acceder a los proveedores
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer(
        builder: (context, ref, _) {
          // Obtener el estado de autenticación
          final authState = ref.watch(authProvider);
          if (authState.isAuthenticated) {
            // Si el usuario está autenticado, mostrar la página de inicio
            return const HomePage();
          } else {
            // Si el usuario no está autenticado, mostrar la página de login
            return const LoginPage();
          }
        },
      ),
    );
  }
}
