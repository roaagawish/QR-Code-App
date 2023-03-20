import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreatQRScreen extends StatefulWidget {
  const CreatQRScreen({Key? key}) : super(key: key);

  @override
  _CreatQRScreenState createState() => _CreatQRScreenState();
}

class _CreatQRScreenState extends State<CreatQRScreen> {
  var qrData = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(240, 255, 160, 178),
          title: Center(child: Text('Creat QR Code')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BarcodeWidget(
                data: qrData,
                barcode: Barcode.qrCode(),
                color: Color.fromARGB(255, 255, 150, 178),
                height: 200,
                width: 200,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .8,
                child: TextField(
                  cursorColor: Color.fromARGB(255, 255, 150, 178),
                  onChanged: (val) {
                    setState(() {
                      qrData = val;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter your QR Code data',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 150, 178),
                        width: 3,
                      )),
                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 150, 178),
                          width: 3,
                        )) ,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ));
  }
}
