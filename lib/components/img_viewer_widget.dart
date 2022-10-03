import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ImgViewerWidget extends StatefulWidget {
  const ImgViewerWidget({
    Key? key,
    this.imageURL,
  }) : super(key: key);

  final String? imageURL;

  @override
  _ImgViewerWidgetState createState() => _ImgViewerWidgetState();
}

class _ImgViewerWidgetState extends State<ImgViewerWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.imageURL!,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      fit: BoxFit.cover,
    );
  }
}
