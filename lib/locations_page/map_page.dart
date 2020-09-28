import 'package:flutter/material.dart';
import 'package:survey_house_app/files/menu_appbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget{
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage>{
  GoogleMapController mapController;
  Set<Marker> markers = new Set<Marker>();
  double lat = -23.2995839;
  double long = -45.9843718;

  void _onMapCreated (GoogleMapController controller){
    mapController = controller;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          style: TextStyle(color:Colors.white),
          onFieldSubmitted: (val){
            lat = -22.485413;
            long = -44.4777412;

            LatLng position = LatLng(lat, long);
            mapController.moveCamera(CameraUpdate.newLatLng(position));

            final Marker marker = Marker(
              markerId: new MarkerId("123456"),
              position: position,
              infoWindow: InfoWindow(
                title: "Casa do Matheus",
                snippet: 'Resende/RJ',
              ),
            );
            setState((){
              markers.add(marker);
            });
          },
        ),
      ),
      drawer: DrawerNavegacao(),
    body: Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        onCameraMove: (data) {
          print(data);
        },
        onTap: (position){
          print(position);
        },
        initialCameraPosition: CameraPosition(
        target: LatLng(lat, long),
        zoom: 11.0,
        ),
        markers: markers,
      ),
    )
    );
  }
}