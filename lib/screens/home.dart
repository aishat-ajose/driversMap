import 'package:driversmap/screens/anotherpage.dart';
import 'package:driversmap/screens/mapPage.dart';
import 'package:driversmap/states/app_state.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class ReceiveOrder extends StatefulWidget {
  @override
  _ReceiveOrderState createState() => _ReceiveOrderState();
}

class _ReceiveOrderState extends State<ReceiveOrder> {

  // final LatLng destination = LatLng(6.5244, 3.3792);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
        body: Center(
        child: RaisedButton(
          child: Text('Receive Order'),
          onPressed: () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyMap()),
            )
          
        ),
          
        ),
    );
  }
}