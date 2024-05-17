import 'package:flutter/material.dart';
import 'package:qr_generator_scanner/Pages/generate_qr_code.dart';
import 'package:qr_generator_scanner/Pages/scan_qr_code.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light background color
      appBar: AppBar(
        title: const Text(
          "QR-generator | QR-Scanner",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF6B38FB), // Matching app bar color
        centerTitle: true,
        elevation: 0, // Remove appbar shadow
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScanCode()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF6B38FB),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 32.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 6.0, // Increased elevation for more depth
                  shadowColor: Colors.purple.withOpacity(0.5), // Darker shadow
                ),
                child: const Text(
                  'Scan QR code',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              const SizedBox(height: 24.0), // Vertical spacing
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenerateCode()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF6B38FB),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 32.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 6.0,
                  shadowColor: Colors.purple.withOpacity(0.5),
                ),
                child: const Text(
                  'Generate QR code',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
