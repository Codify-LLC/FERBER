// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlong2;

class Fmap4 extends StatefulWidget {
  const Fmap4({
    Key? key,
    this.width,
    this.height,
    required this.coordinates,
    required this.recordItem,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<LatLng> coordinates;
  final List<dynamic> recordItem;

  @override
  _Fmap4State createState() => _Fmap4State();
}

class _Fmap4State extends State<Fmap4> {
  final PopupController _popupController = PopupController();

  late List<Marker> markers;
  late int pointIndex;
  late List points;

  @override
  void initState() {
    pointIndex = 0;
    points = widget.coordinates
        .map((coordinate) =>
            latlong2.LatLng(coordinate.latitude, coordinate.longitude))
        .toList();
    markers = widget.coordinates
        .asMap()
        .map((index, coordinate) => Marker(
              anchorPos: AnchorPos.align(AnchorAlign.center),
              height: 50,
              width: 50,
              point: latlong2.LatLng(coordinate.latitude, coordinate.longitude),
              builder: (ctx) => Container(
                  height: 10,
                  width: 10,
                  child: Text(
                    valueOrDefault<String>(
                      formatNumber(
                        functions.stringToDouble(getJsonField(
                          widget.recordItem[index],
                          r'''$.fields['💵 Purchase Price']''',
                        ).toString()),
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: '\$',
                      ),
                      '\$0',
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black),
            ))
        .values
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: points[0],
          zoom:
              7, //specifies what the zoom level of the map should be when it is first built
          maxZoom: 18, //--> max zoom supported
          minZoom: 3, //--> min zoom supported
          plugins: [
            MarkerClusterPlugin(),
          ],
          onTap: (_, __) => _popupController
              .hideAllPopups(), // Hide popup when the map is tapped.
        ),
        children: <Widget>[
          TileLayerWidget(
            options: TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
          ),
          MarkerClusterLayerWidget(
            options: MarkerClusterLayerOptions(
              maxClusterRadius: 120,
              size: Size(40, 40),
              fitBoundsOptions: FitBoundsOptions(
                padding: EdgeInsets.all(50),
              ),
              markers: markers,
              polygonOptions: PolygonOptions(
                  borderColor: Colors.black,
                  color: Colors.black12,
                  borderStrokeWidth: 3),
              popupOptions: PopupOptions(
                  popupSnap: PopupSnap.markerTop,
                  popupController: _popupController,
                  popupBuilder: (_, marker) => Container(
                        width: 200,
                        height: 100,
                        color: Colors.white,
                        child: GestureDetector(
                          onTap: () => debugPrint('Popup tap!'),
                          child: Text(
                            'Container popup for marker at TEXT HERE ${marker.point}',
                          ),
                        ),
                      )),
              builder: (context, markers) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      markers.length.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  } //widget
}
