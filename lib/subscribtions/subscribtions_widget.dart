import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscribtionsWidget extends StatefulWidget {
  const SubscribtionsWidget({Key? key}) : super(key: key);

  @override
  _SubscribtionsWidgetState createState() => _SubscribtionsWidgetState();
}

class _SubscribtionsWidgetState extends State<SubscribtionsWidget> {
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Subscribtions',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).black600,
          body: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Text(
                                    'Subscribtions',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF14181B),
                                          fontSize: 28,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 0, 0),
                                    child: Text(
                                      'Subscribtions',
                                      style: FlutterFlowTheme.of(context)
                                          .title2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF14181B),
                                            fontSize: 28,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                InkWell(
                                  onTap: () async {
                                    context.pop();
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Colors.white,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      buttonSize: 48,
                                      fillColor: Color(0xFFF1F4F8),
                                      icon: Icon(
                                        Icons.close_rounded,
                                        color: Color(0xFFD22C23),
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        context.pop();
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Text(
                                'Free Plan',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFFD22C23),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x34111417),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF95A1AC),
                                    ),
                                    child: CheckboxListTile(
                                      value: checkboxListTileValue1 ??= true,
                                      onChanged: (newValue) => setState(() =>
                                          checkboxListTileValue1 = newValue!),
                                      title: Text(
                                        'Free Limited Access',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF0F1113),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Continue with limited access at no cost. Browse blogs and videos aimed to help you in your journey!',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      tileColor: Color(0xFFF1F4F8),
                                      activeColor: Color(0xFFF60000),
                                      checkColor: Colors.white,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 0, 12, 0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Text(
                                'Paid Plans',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFFD22C23),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x34111417),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              Color(0xFF95A1AC),
                                        ),
                                        child: CheckboxListTile(
                                          value: checkboxListTileValue2 ??=
                                              false,
                                          onChanged: (newValue) => setState(
                                              () => checkboxListTileValue2 =
                                                  newValue!),
                                          title: Text(
                                            'Monthly',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          subtitle: Text(
                                            '\$15.99/mo',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF0F1113),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          tileColor: Color(0xFFF1F4F8),
                                          activeColor: Color(0xFF4B39EF),
                                          checkColor: Colors.white,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 12, 0),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 24, 0),
                                        child: Text(
                                          'Gain unlimited access to all the content we have to offer! ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x34111417),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              Color(0xFF95A1AC),
                                        ),
                                        child: CheckboxListTile(
                                          value: checkboxListTileValue3 ??=
                                              false,
                                          onChanged: (newValue) => setState(
                                              () => checkboxListTileValue3 =
                                                  newValue!),
                                          title: Text(
                                            'Monthly',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          subtitle: Text(
                                            '\$25.99/mo',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF0F1113),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          tileColor: Color(0xFFF1F4F8),
                                          activeColor: Color(0xFF4B39EF),
                                          checkColor: Colors.white,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 12, 0),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 24, 0),
                                        child: Text(
                                          'Gain unlimited access to all the content we have to offer! ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 35),
                              child: Text(
                                'Transaction fee(s) paid separately ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFFD22C23),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Add Payment Method',
                            options: FFButtonOptions(
                              width: 300,
                              height: 70,
                              color: FlutterFlowTheme.of(context).black600,
                              textStyle:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.normal,
                                      ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Contact Support',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ));
  }
}
