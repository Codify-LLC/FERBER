import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PdfReaderWidget extends StatefulWidget {
  const PdfReaderWidget({
    Key? key,
    this.pdfLink,
  }) : super(key: key);

  final String? pdfLink;

  @override
  _PdfReaderWidgetState createState() => _PdfReaderWidgetState();
}

class _PdfReaderWidgetState extends State<PdfReaderWidget> {
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
                child: Text(
                  'PDF Viewer',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Nunito',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
          child: FlutterFlowPdfViewer(
            networkPath: widget.pdfLink!,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            horizontalScroll: false,
          ),
        ),
      ],
    );
  }
}
