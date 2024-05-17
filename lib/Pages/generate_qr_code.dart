import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateCode extends StatefulWidget {
  const GenerateCode({super.key});

  @override
  State<GenerateCode> createState() => _GenerateCodeState();
}

class _GenerateCodeState extends State<GenerateCode> {
  TextEditingController urlController = TextEditingController();
  String qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR-Generate"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: urlController,
                    decoration: InputDecoration(
                        hintText: "Enter Your Data:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (urlController.text.isNotEmpty) {
                        qrData = urlController.text;
                        print("QR Data set: $qrData");
                      } else {
                        print("Text field is empty.");
                      }
                    });
                  },
                  child: Text("Generate")),
              SizedBox(
                height: 15,
              ),
              if (qrData.isNotEmpty)
                Container(
                  child: QrImageView(
                    data: qrData,
                    size: 200,
                    version: QrVersions.auto,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
