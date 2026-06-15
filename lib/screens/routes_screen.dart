import 'package:flutter/material.dart';

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Rotas Favoritas",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          Card(
            child: ListTile(
              leading: const Icon(Icons.directions_bike),
              title: const Text("Casa → Escola"),
              subtitle: const Text("4.2 km • 15 min"),
            ),
          ),
          
          Card(
            child: ListTile(
              leading: const Icon(Icons.directions_bike),
              title: const Text("Escola → Curso"),
              subtitle: const Text("7.8 km • 25 min"),
            ),
          ),
          
          Card(
            child: ListTile(
              leading: const Icon(Icons.directions_bike),
              title: const Text("Parque → Trabalho"),
              subtitle: const Text("3.5 km • 10 min"),
            ),
          ),
        ],
      ),
    );
  }
}
