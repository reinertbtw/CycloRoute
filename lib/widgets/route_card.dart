import 'package:flutter/material.dart';

class RouteCard extends StatelessWidget {
  final String origem;
  final String destino;
  final String distancia;
  final String tempo;

  const RouteCard({
    super.key,
    required this.origem,
    required this.destino,
    required this.distancia,
    required this.tempo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.directions_bike),
        title: Text("$origem → $destino"),
        subtitle: Text("$distancia • $tempo"),
      ),
    );
  }
}