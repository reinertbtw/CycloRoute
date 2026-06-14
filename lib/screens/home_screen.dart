import 'package:flutter/material.dart';
import '../widgets/map_placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String origem = "";
  String destino = "";
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CycloRoute")),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("CycloRoute", style: TextStyle(fontSize: 24)),
            ),

            ListTile(leading: Icon(Icons.home), title: Text("Início")),

            ListTile(leading: Icon(Icons.star), title: Text("Rotas Favoritas")),

            ListTile(leading: Icon(Icons.history), title: Text("Histórico")),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const MapPlaceholder(),
            const SizedBox(height: 20),

            TextField(
              decoration: const InputDecoration(
                labelText: "Origem",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                origem = value;
              },
            ),

            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Destino",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                destino = value;
              },
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  resultado = "Rota de $origem até $destino";
                });
              },
              child: const Text("Buscar rota"),
            ),

            const SizedBox(height: 20),

            Text(
              resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
