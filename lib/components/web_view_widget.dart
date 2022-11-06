import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewWidget extends StatefulWidget {
  const WebViewWidget({
    Key? key,
    this.url,
  }) : super(key: key);

  final String? url;

  @override
  _WebViewWidgetState createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowWebView(
      url: widget.url!,
      bypass: true,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      verticalScroll: false,
      horizontalScroll: false,
    );
  }
}
