import '../backend/api_requests/api_calls.dart';
import '../components/main_m_e_n_u_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultsMainWidget extends StatefulWidget {
  const SearchResultsMainWidget({
    Key? key,
    this.searchType,
    this.searchValue,
  }) : super(key: key);

  final String? searchType;
  final String? searchValue;

  @override
  _SearchResultsMainWidgetState createState() =>
      _SearchResultsMainWidgetState();
}

class _SearchResultsMainWidgetState extends State<SearchResultsMainWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'SearchResultsMain',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: responsiveVisibility(
            context: context,
            desktop: false,
          )
              ? AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  leading: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 58,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 28,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                  title: Text(
                    'Search By ${widget.searchType}',
                    style: FlutterFlowTheme.of(context).title2,
                  ),
                  actions: [],
                  centerTitle: true,
                  elevation: 0,
                )
              : null,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (widget.searchType == 'Address')
                                FutureBuilder<ApiCallResponse>(
                                  future: SearchByMLSorSTREETCall.call(
                                    unparsedAddress: widget.searchValue,
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
                                            size: 50,
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewSearchByAddresSearchByMLSorSTREETResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final searchByAddress = getJsonField(
                                          listViewSearchByAddresSearchByMLSorSTREETResponse
                                              .jsonBody,
                                          r'''$..bundle''',
                                        ).toList();
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: searchByAddress.length,
                                          itemBuilder:
                                              (context, searchByAddressIndex) {
                                            final searchByAddressItem =
                                                searchByAddress[
                                                    searchByAddressIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.5,
                                                                  child:
                                                                      MainMENUWidget(
                                                                    mLSID:
                                                                        getJsonField(
                                                                      listViewSearchByAddresSearchByMLSorSTREETResponse
                                                                          .jsonBody,
                                                                      r'''$..ListingId''',
                                                                    ).toString(),
                                                                    address:
                                                                        getJsonField(
                                                                      listViewSearchByAddresSearchByMLSorSTREETResponse
                                                                          .jsonBody,
                                                                      r'''$..UnparsedAddress''',
                                                                    ).toString(),
                                                                    coordinates:
                                                                        functions.geopoint(
                                                                            getJsonField(
                                                                              listViewSearchByAddresSearchByMLSorSTREETResponse.jsonBody,
                                                                              r'''$..Latitude''',
                                                                            ),
                                                                            getJsonField(
                                                                              listViewSearchByAddresSearchByMLSorSTREETResponse.jsonBody,
                                                                              r'''$..Longitude''',
                                                                            )),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: Container(
                                                            width: 340,
                                                            height: 140,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          5,
                                                                          5,
                                                                          5),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              0,
                                                                              5),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                3,
                                                                                5,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                searchByAddressItem,
                                                                                r'''$..UnparsedAddress''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    fontSize: 18,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                child: Text(
                                                                                  'City: ${getJsonField(
                                                                                    searchByAddressItem,
                                                                                    r'''$..City''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Nunito',
                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                        fontSize: 12,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                child: Text(
                                                                                  'Street: ${getJsonField(
                                                                                    searchByAddressItem,
                                                                                    r'''$..StreetNumber''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Nunito',
                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                        fontSize: 12,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                child: Text(
                                                                                  'MLS ID ${getJsonField(
                                                                                    searchByAddressItem,
                                                                                    r'''$..ListingId''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Nunito',
                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                        fontSize: 14,
                                                                                        fontWeight: FontWeight.w800,
                                                                                      ),
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              if (widget.searchType == 'MLS ID')
                                FutureBuilder<ApiCallResponse>(
                                  future: SearchByMLSorSTREETCall.call(
                                    listingId: widget.searchValue,
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
                                            size: 50,
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewSearchbyMLSIDSearchByMLSorSTREETResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final searchByLS = getJsonField(
                                          listViewSearchbyMLSIDSearchByMLSorSTREETResponse
                                              .jsonBody,
                                          r'''$..bundle''',
                                        ).toList();
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: searchByLS.length,
                                          itemBuilder:
                                              (context, searchByLSIndex) {
                                            final searchByLSItem =
                                                searchByLS[searchByLSIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.5,
                                                              child:
                                                                  MainMENUWidget(
                                                                mLSID:
                                                                    getJsonField(
                                                                  listViewSearchbyMLSIDSearchByMLSorSTREETResponse
                                                                      .jsonBody,
                                                                  r'''$..ListingId''',
                                                                ).toString(),
                                                                address:
                                                                    getJsonField(
                                                                  listViewSearchbyMLSIDSearchByMLSorSTREETResponse
                                                                      .jsonBody,
                                                                  r'''$..UnparsedAddress''',
                                                                ).toString(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery.of(
                                                                          context)
                                                                      .viewInsets,
                                                                  child:
                                                                      Container(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.5,
                                                                    child:
                                                                        MainMENUWidget(
                                                                      mLSID:
                                                                          getJsonField(
                                                                        listViewSearchbyMLSIDSearchByMLSorSTREETResponse
                                                                            .jsonBody,
                                                                        r'''$..ListingId''',
                                                                      ).toString(),
                                                                      address:
                                                                          getJsonField(
                                                                        listViewSearchbyMLSIDSearchByMLSorSTREETResponse
                                                                            .jsonBody,
                                                                        r'''$..UnparsedAddress''',
                                                                      ).toString(),
                                                                      coordinates: functions.geopoint(
                                                                          getJsonField(
                                                                            listViewSearchbyMLSIDSearchByMLSorSTREETResponse.jsonBody,
                                                                            r'''$..Latitude''',
                                                                          ),
                                                                          getJsonField(
                                                                            listViewSearchbyMLSIDSearchByMLSorSTREETResponse.jsonBody,
                                                                            r'''$..Longitude''',
                                                                          )),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                            ),
                                                            child: Container(
                                                              width: 340,
                                                              height: 140,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            5),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(3, 5, 0, 0),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  searchByLSItem,
                                                                                  r'''$..UnparsedAddress''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Nunito',
                                                                                      fontSize: 18,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                  child: Text(
                                                                                    'City: ${getJsonField(
                                                                                      searchByLSItem,
                                                                                      r'''$..City''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Nunito',
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                  child: Text(
                                                                                    'Street: ${getJsonField(
                                                                                      searchByLSItem,
                                                                                      r'''$..StreetNumber''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Nunito',
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          fontSize: 12,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Text(
                                                                                  'MLS ID ${getJsonField(
                                                                                    searchByLSItem,
                                                                                    r'''$..ListingId''',
                                                                                  ).toString()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Nunito',
                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                        fontSize: 14,
                                                                                        fontWeight: FontWeight.w800,
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
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
