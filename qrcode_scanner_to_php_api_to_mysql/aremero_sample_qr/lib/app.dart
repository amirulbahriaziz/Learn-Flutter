import 'dart:convert';
import 'package:http/http.dart' as HTTP;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial by Aremero',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenHomepage(myTitle: 'Tutorial by Aremero'),
    );
  }
}

class ScreenHomepage extends StatefulWidget {
  ScreenHomepage({Key key, this.myTitle}) : super(key: key);

  final String myTitle;

  @override
  _ScreenHomepageState createState() => _ScreenHomepageState();
}

class _ScreenHomepageState extends State<ScreenHomepage> {
  functionScanner() async {
    final resultScanner = await FlutterBarcodeScanner.scanBarcode("#004297", "", false, ScanMode.QR);

    // DEAKT SINI, KO RUN FLUTTER APP KO GUNA ANDROID, LEPAS TU CONNECT WIFI YANG SAMA, THEN, KO BUKAK CMD,
    // TYPE IPCONFIG, AMEK IP ADDRESS DIA, LETAK DEKAT SELEPAS HTTP:// NI, SO JADI MACAM HTTP://[IPV4 ADDRESS KO PUNYA LAPTOP]/NAMA_FOLDER_KO_LETAK_API_YANG_DALAM_HTDOCS

    // THEN, https://www.qrcode-monkey.com/, KO BUKAK BAHAGIAN TEXT, KO LETAK LA NAMA ALI KE AHMAD KE, LPS TU GENERATE QR.
    String url = "http://192.168.1.12/tutorial_flutter/qrcode/aremero_tutorial_api/insertintouser.php?username=" + resultScanner;
    final response = await HTTP.post(url);
    final data = json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.myTitle),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: functionScanner,
            child: Text('Press To Scan'),
          ),
        ),
      ),
    );
  }
}
