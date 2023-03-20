import 'package:flutter/material.dart';
import 'package:qr_code2/creat.dart';
import 'package:qr_code2/scan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR Code App',
      themeMode: ThemeMode.system,
      color: Color.fromARGB(240, 255, 160, 178),
      home: HomePage(title: 'QR Code App'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(240, 255, 160, 178),
          title: Center(child: Text('Home page')),
        ),
        body:
        Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>CreatQRScreen()));
                },
                    child: Text('Create QR Code'),
                    style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 255, 150, 178))
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ScanQRScreen()));
                },
                    child: Text('Scane QR Code'),
                    style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 255, 150, 178))
                ),
              ]
          ),
        )
    );
  }
}


