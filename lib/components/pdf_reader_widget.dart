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
    return FlutterFlowPdfViewer(
      networkPath: widget.pdfLink!,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      horizontalScroll: false,
    );
  }
}
