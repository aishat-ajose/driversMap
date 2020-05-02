import 'package:driversmap/requests/google_maps_request.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class anotherPage extends StatefulWidget {
  LatLng des;
  anotherPage(this.des);
  @override
  _anotherPageState createState() => _anotherPageState();
}

class _anotherPageState extends State<anotherPage> {
  GoogleMapController _controller;
  GoogleMapsServices _googleMapsServices = GoogleMapsServices();
  TextEditingController  locationController = TextEditingController();
  TextEditingController  destinationController = TextEditingController();
  static LatLng _initialPosition;
  static LatLng _destination;
  LatLng _lastPosition = _initialPosition;
  // LatLng(37.42796133580664, -122.085749655962);
  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};
  // String destinationname  = "a";

  @override
  void initState() {
    super.initState();
    // _getUserLocation();
    getdestinationAddress(widget.des);
      }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Text(("destinationname")),
    );
  }

  getdestinationAddress(LatLng destination) async{
    List<Placemark> placemark = await Geolocator()
        .placemarkFromCoordinates(destination.latitude, destination.longitude);
    String destinationname = placemark[0].name;
    // _addMarker(destination, placemark[0].name);

    // _destination = destination;
  }
}