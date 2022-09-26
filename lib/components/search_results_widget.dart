import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultsWidget extends StatefulWidget {
  const SearchResultsWidget({
    Key? key,
    this.listingId,
    this.unparsedAddress,
    this.statement,
  }) : super(key: key);

  final String? listingId;
  final String? unparsedAddress;
  final bool? statement;

  @override
  _SearchResultsWidgetState createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.statement == true)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: SearchByMLSorSTREETCall.call(
                            unparsedAddress: widget.unparsedAddress,
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
                            final columnAddressResultSearchByMLSorSTREETResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final unparsedAddress = getJsonField(
                                  columnAddressResultSearchByMLSorSTREETResponse
                                      .jsonBody,
                                  r'''$..bundle''',
                                ).toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(unparsedAddress.length,
                                            (unparsedAddressIndex) {
                                      final unparsedAddressItem =
                                          unparsedAddress[unparsedAddressIndex];
                                      return ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'Detailsproperty',
                                                queryParams: {
                                                  'mLsID': serializeParam(
                                                      getJsonField(
                                                        unparsedAddressItem,
                                                        r'''$..ListingId''',
                                                      ).toString(),
                                                      ParamType.String),
                                                  'address': serializeParam(
                                                      getJsonField(
                                                        unparsedAddressItem,
                                                        r'''$..UnparsedAddress''',
                                                      ).toString(),
                                                      ParamType.String),
                                                  'standardStatus':
                                                      serializeParam(
                                                          getJsonField(
                                                            unparsedAddressItem,
                                                            r'''$..StandardStatus''',
                                                          ).toString(),
                                                          ParamType.String),
                                                  'listPrice': serializeParam(
                                                      getJsonField(
                                                        unparsedAddressItem,
                                                        r'''$..ListPrice''',
                                                      ).toString(),
                                                      ParamType.String),
                                                  'sTELLARExpectedClosingDate':
                                                      serializeParam(
                                                          functions
                                                              .closingDateFun(
                                                                  getJsonField(
                                                            unparsedAddressItem,
                                                            r'''$..STELLAR_ExpectedClosingDate''',
                                                          ).toString()),
                                                          ParamType.DateTime),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: ListTile(
                                              title: Text(
                                                getJsonField(
                                                  unparsedAddressItem,
                                                  r'''$..UnparsedAddress''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                'MLS ID : ${getJsonField(
                                                  unparsedAddressItem,
                                                  r'''$..ListingId''',
                                                ).toString()}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFF303030),
                                                size: 20,
                                              ),
                                              tileColor: Colors.white,
                                              dense: false,
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    if (widget.statement == false)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: SearchByMLSorSTREETCall.call(
                            listingId: widget.listingId,
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
                            final columnMLSResultSearchByMLSorSTREETResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final listingId = getJsonField(
                                  columnMLSResultSearchByMLSorSTREETResponse
                                      .jsonBody,
                                  r'''$..bundle''',
                                ).toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(listingId.length,
                                      (listingIdIndex) {
                                    final listingIdItem =
                                        listingId[listingIdIndex];
                                    return ListView(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            context.pushNamed(
                                              'Detailsproperty',
                                              queryParams: {
                                                'mLsID': serializeParam(
                                                    getJsonField(
                                                      listingIdItem,
                                                      r'''$..ListingId''',
                                                    ).toString(),
                                                    ParamType.String),
                                                'address': serializeParam(
                                                    getJsonField(
                                                      listingIdItem,
                                                      r'''$..UnparsedAddress''',
                                                    ).toString(),
                                                    ParamType.String),
                                                'standardStatus':
                                                    serializeParam(
                                                        getJsonField(
                                                          listingIdItem,
                                                          r'''$..StandardStatus''',
                                                        ).toString(),
                                                        ParamType.String),
                                                'listPrice': serializeParam(
                                                    getJsonField(
                                                      listingIdItem,
                                                      r'''$..ListPrice''',
                                                    ).toString(),
                                                    ParamType.String),
                                                'sTELLARExpectedClosingDate':
                                                    serializeParam(
                                                        functions
                                                            .closingDateFun(
                                                                getJsonField(
                                                          listingIdItem,
                                                          r'''$..STELLAR_ExpectedClosingDate''',
                                                        ).toString()),
                                                        ParamType.DateTime),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: ListTile(
                                            title: Text(
                                              getJsonField(
                                                listingIdItem,
                                                r'''$..UnparsedAddress''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title3
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            subtitle: Text(
                                              'MLS ID : ${getJsonField(
                                                listingIdItem,
                                                r'''$..ListingId''',
                                              ).toString()}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Color(0xFF303030),
                                              size: 20,
                                            ),
                                            tileColor: Colors.white,
                                            dense: false,
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                );
                              },
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
