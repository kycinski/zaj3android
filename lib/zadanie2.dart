import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class Zadanie2 extends StatefulWidget {
  const Zadanie2({super.key});

  @override
  State<Zadanie2> createState() => _Zadanie2State();
}

class _Zadanie2State extends State<Zadanie2> {
  // final double latitude = 37.7749;

  // final double longitude = -122.4194;

  final latitudeKontroler = TextEditingController();

  final longitudeKontroler = TextEditingController();

  @override
  void dispose() {
    latitudeKontroler.dispose();
    longitudeKontroler.dispose();
    super.dispose();
  }

  void openMap() {
    MapsLauncher.launchCoordinates(double.parse(latitudeKontroler.text), double.parse(longitudeKontroler.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: latitudeKontroler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: longitudeKontroler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed: openMap, child: const Text('Otwórz google mapy')),
            ],
          ),
        ),
      ),
    );
  }
}
