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

class customMap extends StatefulWidget {
  const customMap({
    Key? key,
    this.width,
    this.height,
    required this.addresses,
    this.allowInteraction = false,
    this.allowZoom = false,
    this.showZoomControls = false,
    this.showLocation = false,
    this.showCompass = false,
    this.showMapToolbar = false,
    this.showTraffic = false,
    this.centerMapOnMarkerTap = false,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> addresses;
  final bool allowInteraction;
  final bool allowZoom;
  final bool showZoomControls;
  final bool showLocation;
  final bool showCompass;
  final bool showMapToolbar;
  final bool showTraffic;
  final bool centerMapOnMarkerTap;

  @override
  _customMapState createState() => _customMapState();
}

class _customMapState extends State<customMap> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  Future<List<FlutterFlowMarker>> initialiseMap() async {
    List<FlutterFlowMarker> markersList = [];
    await getCoordinatesFromAddress(widget.addresses).then((value) {
      int index = 0;
      value.forEach((element) {
        markersList.add(FlutterFlowMarker(widget.addresses[index], element));
        index++;
      });
    });
    return markersList;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FlutterFlowMarker>>(
        future: initialiseMap(),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return FlutterFlowGoogleMap(
            markers: snapshot.data!,
            controller: googleMapsController,
            onCameraIdle: (latLng) => googleMapsCenter = latLng,
            initialLocation: googleMapsCenter ??= snapshot.data!.first.location,
            markerColor: GoogleMarkerColor.rose,
            mapType: MapType.terrain,
            style: GoogleMapStyle.standard,
            allowInteraction: widget.allowInteraction,
            allowZoom: widget.allowZoom,
            showZoomControls: widget.showZoomControls,
            showLocation: widget.showLocation,
            showCompass: widget.showCompass,
            showMapToolbar: widget.showMapToolbar,
            showTraffic: widget.showTraffic,
            centerMapOnMarkerTap: widget.centerMapOnMarkerTap,
          );
        });
  }
}
