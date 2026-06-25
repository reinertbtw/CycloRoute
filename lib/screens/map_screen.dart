import 'package:flutter/material.dart';
import 'routes_screen.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  int _selectedIndex = 0;

  Future<void> _getCurrentLocation() async {
  print("TESTE GPS INICIADO");

  LocationPermission permission =
      await Geolocator.requestPermission();

  print("RESULTADO PERMISSÃO: $permission");

  Position position = await Geolocator.getCurrentPosition();

  print("LATITUDE: ${position.latitude}");
  print("LONGITUDE: ${position.longitude}");
}

  final List<Widget> _pages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[300],
      child: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(-29.6842, -51.1303),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.cycloroute',
              ),
            ],
          ),

          Positioned(
            bottom: 120,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.my_location),
            ),
          ),

          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
              ),
              child: const Text(
                "Nenhuma rota selecionada",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ),
    const RoutesScreen(),

    Container(
      color: Colors.orange[100],
      child: const Center(child: Text("Configurações")),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
          BottomNavigationBarItem(icon: Icon(Icons.alt_route), label: "Rotas"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Config"),
        ],
      ),
    );
  }
}
