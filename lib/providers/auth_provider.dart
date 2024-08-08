import 'package:flutter_riverpod/flutter_riverpod.dart';

// Estado de autenticación con dos propiedades: isAuthenticated y errorMessage
class AuthState {
  final bool isAuthenticated;  // Si el usuario está autenticado
  final String? errorMessage;  // Mensaje de error opcional

  AuthState({required this.isAuthenticated, this.errorMessage});
}

// Notificador que maneja la lógica de autenticación
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState(isAuthenticated: false));

  // Método de inicio de sesión con credenciales de usuario
  // Se puede cambiar por una llamada a una API o una base de datos
  void login(String username, String password) {
    if (username == 'user' && password == 'password') {
      state = AuthState(isAuthenticated: true);
    } else {
      state = AuthState(isAuthenticated: false, errorMessage: 'Invalid credentials');
    }
  }

  // Método de cierre de sesión
  void logout() {
    state = AuthState(isAuthenticated: false);
  }
}

// Proveedor de estado para acceder al AuthNotifier
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
