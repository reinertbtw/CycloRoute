import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[300],
      child: Stack(
        children: [
          const Center(child: Icon(Icons.map, size: 80, color: Colors.grey)),
        ],
      ),
    ),
    Positioned(
      bottom: 120,
      right: 20,
      child: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.my_location),
      ),
    ),
    Container(
      color: Colors.blue[100],
      child: const Center(child: Text("Rotas")),
    ),
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
