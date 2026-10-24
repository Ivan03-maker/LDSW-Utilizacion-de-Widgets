import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica Widgets Básicos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetsBasicosScreen(),
    );
  }
}

class WidgetsBasicosScreen extends StatelessWidget {
  const WidgetsBasicosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Básicos (LDSW)'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. WIDGET TEXT
            const Text(
              'Demostración de Widgets en Flutter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 15),

            // 2. WIDGET CONTAINER
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.teal.shade200),
              ),
              child: const Text(
                'Este es un Container que engloba contenido, con padding, bordes redondeados y un color de fondo personalizado.',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 20),

            // 3. WIDGET ROW
            const Text('Ejemplo de Row (Fila):', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Boton 1')),
                ElevatedButton(onPressed: () {}, child: const Text('Boton 2')),
                ElevatedButton(onPressed: () {}, child: const Text('Boton 3')),
              ],
            ),
            const SizedBox(height: 20),

            // 4. WIDGET COLUMN
            const Text('Ejemplo de Column (Columna):', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Elemento número uno de la columna'),
                Text('• Elemento número dos de la columna'),
                Text('• Elemento número tres de la columna'),
              ],
            ),
            const SizedBox(height: 20),

            // 5. WIDGET STACK
            const Text('Ejemplo de Stack (Elementos superpuestos):', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Contenedor base más grande
                  Container(
                    width: 200,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  // Contenedor intermedio superpuesto
                  Container(
                    width: 140,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  // Texto superior en el Stack
                  const Text(
                    '¡Superpuestos!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}