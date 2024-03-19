import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Método para construir la interfaz de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Título de la aplicación
      title: 'Flutter Demo',
      // Tema personalizado de la aplicación
      theme: ThemeData(
        // Establecer un esquema de colores personalizado
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Habilitar las características de Material3
        useMaterial3: true,
      ),
      // Página inicial de la aplicación
      home: const FirstPage(),
    );
  }
}

// Primera página de la aplicación
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título de la barra de aplicación
        title: const Text('Pagina Principal'),
        // Color de fondo de la barra de aplicación
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          // Botón para navegar a la segunda página
          child: const Text('Ir a segunda pantalla'),
          onPressed: () {
            // Función para ir a la segunda página
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ),
    );
  }
}

// Segunda página de la aplicación
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Título de la barra de aplicación
          title: const Text('Segunda Pagina'),
          // Color de fondo de la barra de aplicación
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
            child: ElevatedButton(
          // Botón para regresar a la primera página
          child: const Text('Regresar'),
          onPressed: () {
            // Función para regresar a la página anterior
            Navigator.pop(context);
          },
        )));
  }
}
