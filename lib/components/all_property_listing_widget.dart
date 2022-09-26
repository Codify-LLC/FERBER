import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AllPropertyListingWidget extends StatefulWidget {
  const AllPropertyListingWidget({Key? key}) : super(key: key);

  @override
  _AllPropertyListingWidgetState createState() =>
      _AllPropertyListingWidgetState();
}

class _AllPropertyListingWidgetState extends State<AllPropertyListingWidget> {
  PageController? pageViewController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetTransactionsCall.call(
        maxRecords: 100,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitChasingDots(
                color: Color(0xFFD9180E),
                size: 0,
              ),
            ),
          );
        }
        final pageViewGetTransactionsResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final record = GetTransactionsCall.recordsList(
              pageViewGetTransactionsResponse.jsonBody,
            ).toList();
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: PageView.builder(
                controller: pageViewController ??=
                    PageController(initialPage: min(0, record.length - 1)),
                scrollDirection: Axis.horizontal,
                itemCount: record.length,
                itemBuilder: (context, recordIndex) {
                  final recordItem = record[recordIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed(
                          'DetailNew',
                          queryParams: {
                            'address': serializeParam(
                                getJsonField(
                                  recordItem,
                                  r'''$.fields['🏡 Address']''',
                                ).toString(),
                                ParamType.String),
                            'status': serializeParam(
                                getJsonField(
                                  recordItem,
                                  r'''$.fields['⚡❗Status']''',
                                ).toString(),
                                ParamType.String),
                            'displayDate': serializeParam('', ParamType.String),
                            'transactionsRecord':
                                serializeParam(recordItem, ParamType.JSON),
                            'imagePath': serializeParam(
                                getJsonField(
                                  recordItem,
                                  r'''$.fields['Property Image'][0].url''',
                                ),
                                ParamType.String),
                            'purchasePrice': serializeParam(
                                valueOrDefault<String>(
                                  recordItem,
                                  '\$.fields[\'💵 Purchase Price\']',
                                ),
                                ParamType.String),
                          }.withoutNulls,
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                valueOrDefault<String>(
                                  getJsonField(
                                    recordItem,
                                    r'''$.fields['Property Image'][0].url''',
                                  ),
                                  'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyamin-mellish-186077.jpg&fm=jpg',
                                ),
                                width: MediaQuery.of(context).size.width * 0.45,
                                height: MediaQuery.of(context).size.height * 1,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 8, 8, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getJsonField(
                                          recordItem,
                                          r'''$.fields['🏡 Address']''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      if (FFAppState()
                                          .statusVisiblityCheck
                                          .contains(getJsonField(
                                            recordItem,
                                            r'''$.fields['⚡❗Status']''',
                                          )))
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ('${getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString()}' ==
                                                'Active')
                                              Text(
                                                getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF5CE430),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            if ('${getJsonField(
                                                  recordItem,
                                                  r'''$''',
                                                ).toString()}' ==
                                                'Pending')
                                              Text(
                                                getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFDF723F),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            if ('${getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString()}' ==
                                                'Black')
                                              Text(
                                                getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor4,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                          ],
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 4, 4),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              getJsonField(
                                                recordItem,
                                                r'''$.fields['🤵 Agent Image Test1'][0].url''',
                                              ),
                                              'https://static.thenounproject.com/png/630729-200.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '\$ ${getJsonField(
                                          recordItem,
                                          r'''$.fields['💵 Purchase Price']''',
                                        ).toString()}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      if (FFAppState()
                                          .statusVisiblityCheck
                                          .contains(getJsonField(
                                            recordItem,
                                            r'''$.fields['⚡❗Status']''',
                                          )))
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ('${getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString()}' ==
                                                'Active')
                                              Text(
                                                getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFF5CE430),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            if ('${getJsonField(
                                                  recordItem,
                                                  r'''$''',
                                                ).toString()}' ==
                                                'Pending')
                                              Text(
                                                getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              Color(0xFFDF723F),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            if ('${getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString()}' ==
                                                'Black')
                                              Text(
                                                getJsonField(
                                                  recordItem,
                                                  r'''$.fields['⚡❗Status']''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor4,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
