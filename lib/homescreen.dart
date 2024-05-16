import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QR-generator | QR-Scanner"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Scan QR code")),
              ElevatedButton(onPressed: () {}, child: Text("Generate QR code"))
            ],
          ),
        ));
  }
}
