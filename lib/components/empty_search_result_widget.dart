import '../components/buyer_and_seller_form_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EmptySearchResultWidget extends StatefulWidget {
  const EmptySearchResultWidget({Key? key}) : super(key: key);

  @override
  _EmptySearchResultWidgetState createState() =>
      _EmptySearchResultWidgetState();
}

class _EmptySearchResultWidgetState extends State<EmptySearchResultWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Lottie.asset(
            'assets/lottie_animations/112136-empty-red_(1).json',
            width: 150,
            height: 110,
            fit: BoxFit.contain,
            frameRate: FrameRate(30),
            animate: true,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
          child: AutoSizeText(
            'Seems like the transaction doesn\'t exist',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title3.override(
                  fontFamily: 'Nunito',
                  fontSize: 14,
                ),
          ),
        ),
        AutoSizeText(
          'Create a new transaction now!',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lato',
                fontSize: 10,
              ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
            child: FFButtonWidget(
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 1,
                        child: BuyerAndSellerFormWidget(),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              text: 'Create Transaction',
              options: FFButtonOptions(
                height: 30,
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 2,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              showLoadingIndicator: false,
            ),
          ),
        ),
      ],
    );
  }
}
