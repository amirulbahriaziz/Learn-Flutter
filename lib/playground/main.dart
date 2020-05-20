import 'package:flutter/material.dart';
import 'package:learnflutterprovider/master_button.dart';
import 'package:learnflutterprovider/waktusolat.dart';

void main() => runApp(MasterApp());

class MasterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Provider',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MasterFeature(),
    );
  }
}

class MasterFeature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Color(0XFFECF0F1),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MasterButton(
                        buttonText: 'Update',
                        buttonFontSize: 14,
                        buttonWidth: 100,
                        buttonHeight: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 15,
                        color: Color(0xFF666666).withOpacity(.15),
                      ),
                    ],
                  ),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text('Waktu Solat'),
                              Text('Subuh')
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          color: Color(0XFFECF0F1),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                MasterButton(
                                    buttonText: 'Forgot Prayer',
                                    buttonFontSize: 12,
                                    buttonWidth: 125,
                                    buttonHeight: 40),
                                MasterButton(
                                    buttonText: 'Done Qada',
                                    buttonFontSize: 12,
                                    buttonWidth: 125,
                                    buttonHeight: 40),
                              ]),
                        )
                      ]),
                ),
                WaktuSolatMaster(),
              ]),
        ),
      ),
    );
  }
}
