// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import '../../flutter_flow/flutter_flow_google_map.dart';

class CustomMap extends StatefulWidget {
  const CustomMap({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CustomMapState createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return FlutterFlowGoogleMap(
      controller: googleMapsController,
      onCameraIdle: (latLng) => googleMapsCenter = latLng,
      initialLocation: googleMapsCenter ??= LatLng(28.493431, -81.293925),
      markerColor: GoogleMarkerColor.rose,
      mapType: MapType.terrain,
      style: GoogleMapStyle.standard,
      initialZoom: 14,
      allowInteraction: false,
      allowZoom: true,
      showZoomControls: false,
      showLocation: true,
      showCompass: false,
      showMapToolbar: false,
      showTraffic: false,
      centerMapOnMarkerTap: true,
    );
  }
}
