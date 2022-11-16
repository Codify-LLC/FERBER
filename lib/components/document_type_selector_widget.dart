import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentTypeSelectorWidget extends StatefulWidget {
  const DocumentTypeSelectorWidget({
    Key? key,
    this.status,
  }) : super(key: key);

  final String? status;

  @override
  _DocumentTypeSelectorWidgetState createState() =>
      _DocumentTypeSelectorWidgetState();
}

class _DocumentTypeSelectorWidgetState
    extends State<DocumentTypeSelectorWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: 350,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FFButtonWidget(
              onPressed: () async {
                setState(() => FFAppState().currentDocType = 'POF');
                Navigator.pop(context);
              },
              text: ' Pre Approval or Proof of Funds (POF)',
              options: FFButtonOptions(
                width: double.infinity,
                height: 60,
                color: Colors.black,
                textStyle: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(
                      () => FFAppState().currentDocType = 'AS-IS Contract');
                  Navigator.pop(context);
                },
                text: 'AS-IS Contract & etc',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Nunito',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => FFAppState().currentDocType = 'Listing Docs');
                  Navigator.pop(context);
                },
                text: 'Listing Docs',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Nunito',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => FFAppState().currentDocType = 'Misc Docs');
                  Navigator.pop(context);
                },
                text: 'Misc Docs',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60,
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Nunito',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
