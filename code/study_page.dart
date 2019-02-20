import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';

class StudyPage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<StudyPage> {
  NfcData _nfcData;

  @override
  void initState() {
    super.initState();
  }

  Future<void> startNFC() async {
    NfcData response;

    setState(() {
      _nfcData = NfcData();
      _nfcData.status = NFCStatus.reading;
    });

    print('NFC: Scan started');

    try {
      print('NFC: Scan read NFC tag');
      response = await FlutterNfcReader.read;
    } on PlatformException {
      print('NFC: Scan stopped exception');
    }
    setState(() {
      _nfcData = response;
    });
  }

  Future<void> stopNFC() async {
    NfcData response;

    try {
      print('NFC: Stop scan by user');
      response = await FlutterNfcReader.stop;
    } on PlatformException {
      print('NFC: Stop scan exception');
      response = NfcData(
        id: '',
        content: '',
        error: 'NFC scan stop exception',
        statusMapper: '',
      );
      response.status = NFCStatus.error;
    }

    setState(() {
      _nfcData = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          body: new SafeArea(
            top: true,
            bottom: true,
            child: new Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:25.0 ,top: 100.0),
                      ),
                      new Text(
                          _nfcData != null ? 'Seat Number: ${_nfcData.content}': '',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway')),

                    ],
                  ),
                  new Center(
                    child: new AspectRatio(
                      aspectRatio: 487 / 451,
                      child: new Container(
                        margin: EdgeInsets.fromLTRB(10.0,0.0,10.0, 0.0),
                        decoration: new BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.scaleDown,
                              alignment: FractionalOffset.center,
                              image: new AssetImage("assets/book.jpg"),
                            )
                        ),
                      ),
                    ),
                  ),
                  //new Text(
                  //    _nfcData != null ? 'Seat number: ${_nfcData.content}' : '',
                  //    textAlign: TextAlign.center,
                  //    style: TextStyle(fontWeight: FontWeight. bold, fontFamily: 'Raleway')),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new RaisedButton(
                        child: Text('Start NFC'),
                        onPressed: () {
                          startNFC();
                        },
                      ),
                      new RaisedButton(
                        child: Text('Tap this to free seat'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StudyPage())
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
