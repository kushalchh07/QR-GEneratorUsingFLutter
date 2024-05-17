import 'package:flutter/material.dart';
import 'package:qr_generator_scanner/Pages/generate_qr_code.dart';
import 'package:qr_generator_scanner/Pages/scan_qr_code.dart';

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
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScanCode()));
                  },
                  child: Text("Scan QR code")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GenerateCode()));
                  },
                  child: Text("Generate QR code"))
            ],
          ),
        ));
  }
}
