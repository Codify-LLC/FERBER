import '../flutter_flow/flutter_flow_icon_button.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          constraints: BoxConstraints(
            maxHeight: 150,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                  child: Text(
                    'Image Viewer',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Image.network(
            widget.imageURL!,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
