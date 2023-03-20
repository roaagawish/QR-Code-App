import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';



class ScanQRScreen extends StatefulWidget {
  const ScanQRScreen({Key? key}) : super(key: key);

  @override
  _ScanQRScreenState createState() => _ScanQRScreenState();
}

class _ScanQRScreenState extends State<ScanQRScreen> {
  var qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(240, 255, 160, 178),
          title: Center(child: Text('Scan QR Code')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                qrData,
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
              ElevatedButton(onPressed: scan,
                  child: Text('Click here to Scan'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 150, 178))),
              SizedBox(
                width: 20,
                height: 20,
              ),
            ],
          ),
        ));
  }

  Future<void> scan() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'Cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrData = value;
        });
      });
    } catch (e) {
      setState(() {
        qrData = 'Error!';
      });
    }
  }
}