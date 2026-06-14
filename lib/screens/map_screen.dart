import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. MAPA (placeholder full screen)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green[100],
            child: const Center(
              child: Text("MAPA (placeholder)", style: TextStyle(fontSize: 20)),
            ),
          ),

          // 2. Botão flutuante (GPS fake por enquanto)
          Positioned(
            bottom: 100,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.my_location),
            ),
          ),
        ],
      ),
    );
  }
}
