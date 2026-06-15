import 'package:flutter/material.dart';
import '../widgets/route_card.dart';

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

          const RouteCard(
            origem: "Casa",
            destino: "Escola",
            distancia: "4.2 km",
            tempo: "15 min",
          ),
          const RouteCard(
            origem: "Escola",
            destino: "Centro",
            distancia: "7.8 km",
            tempo: "25 min",
          ),
          const RouteCard(
            origem: "Parque",
            destino: "Trabalho",
            distancia: "3.5 km",
            tempo: "10 min",
          ),
        ],
      ),
    );
  }
}
