# Flutter Authentication Example with Riverpod

🚀 Este proyecto es un ejemplo simple de cómo manejar la autenticación en una aplicación Flutter usando `flutter_riverpod`.

## 📂 Estructura del Proyecto

```bash
lib/
├── main.dart
├── pages/
│ ├── home_page.dart
│ └── login_page.dart
└── providers/
  └── auth_provider.dart
```


### 📄 Descripción de los Archivos

- **main.dart**: Punto de entrada de la aplicación. Configura `ProviderScope` y determina qué página mostrar según el estado de autenticación.
- **pages/login_page.dart**: Página de inicio de sesión donde los usuarios pueden ingresar sus credenciales.
- **pages/home_page.dart**: Página principal que muestra un mensaje de bienvenida y un botón de cerrar sesión.
- **providers/auth_provider.dart**: Proveedor de estado que maneja la lógica de autenticación.

## 🛠 Requisitos

- Flutter SDK
- Dart
- Dependencias en `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^1.0.0
```

## 🚀 Instalación

- Clona el Repositorio:

```bash
git clone https://github.com/tu-usuario/Flutter_login_riverpod_example.git
```

- Navega al directorio del proyecto:

```bash
cd Flutter_login_riverpod_example
```

- Instala las dependencias:

```bash
flutter pub get
```

- Ejecuta la aplicación:

```bash
flutter run
```

## 📲 Uso
### LoginPage

- La página de inicio de sesión permite a los usuarios ingresar su nombre de usuario y contraseña.
- Usa **`TextEditingController`** para manejar la entrada de texto.
- Llama a **`authNotifier.login(username, password)`** para intentar iniciar sesión.
- Muestra un mensaje de error si las credenciales son incorrectas.

### HomePage
- La página principal muestra un mensaje de bienvenida.
- Incluye un botón de cierre de sesión que llama a **`authNotifier.logout()`**.

### AuthProvider
- Maneja el estado de autenticación usando StateNotifier.
- Incluye métodos para iniciar y cerrar sesión.

## 🤝 Contribuciones
- Las contribuciones son bienvenidas. Si deseas contribuir, por favor abre un issue o un pull request en GitHub.

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Consulta sobre la [licencia MIT](https://opensource.org/licenses/MIT) para más detalles.


