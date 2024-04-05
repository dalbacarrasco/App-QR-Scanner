import 'package:flutter/material.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {},
          ),],
      ),
      body: MapasPage(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScannButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final currentIndex = 1;

    switch (currentIndex) {
      case 0:
        return MapaPage();
      case 1:
        return DireccionesPage();
      default:
        return MapasPage();
    }
  }
}