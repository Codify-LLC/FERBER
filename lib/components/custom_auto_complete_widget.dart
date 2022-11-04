import '../backend/api_requests/api_calls.dart';
import '../components/address_bridge_a_p_i_results_widget.dart';
import '../components/empty_widget.dart';
import '../components/m_l_s_bridge_a_p_i_results_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAutoCompleteWidget extends StatefulWidget {
  const CustomAutoCompleteWidget({
    Key? key,
    this.searchText,
    this.mls,
    this.address,
  }) : super(key: key);

  final String? searchText;
  final bool? mls;
  final bool? address;

  @override
  _CustomAutoCompleteWidgetState createState() =>
      _CustomAutoCompleteWidgetState();
}

class _CustomAutoCompleteWidgetState extends State<CustomAutoCompleteWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(0),
        topRight: Radius.circular(0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xE1FFFFFF),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
          border: Border.all(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.address ?? true)
                FutureBuilder<ApiCallResponse>(
                  future: AirtableAPIsGroup.listTransactionsRecordsCall.call(
                    filterByFormula:
                        'SEARCH(\'${widget.searchText}\', {🏡 Address})',
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: EmptyWidget(),
                          ),
                        ),
                      );
                    }
                    final addressAirtableListTransactionsRecordsResponse =
                        snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final record = functions
                            .nonNullList(
                                AirtableAPIsGroup.listTransactionsRecordsCall
                                    .recordList(
                                      addressAirtableListTransactionsRecordsResponse
                                          .jsonBody,
                                    )
                                    .toList())
                            .toList();
                        if (record.isEmpty) {
                          return Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: AddressBridgeAPIResultsWidget(
                                searchText: widget.searchText,
                              ),
                            ),
                          );
                        }
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(record.length, (recordIndex) {
                            final recordItem = record[recordIndex];
                            return InkWell(
                              onTap: () async {
                                setState(() => FFAppState()
                                        .currentDisplayRecordID = getJsonField(
                                      recordItem,
                                      r'''$.id''',
                                    ).toString());
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed(
                                  'Home',
                                  queryParams: {
                                    'defaultPage': serializeParam(
                                      'PropertyDetails',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.database,
                                ),
                                title: Text(
                                  getJsonField(
                                    recordItem,
                                    r'''$.fields['🏡 Address']''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                                subtitle: Text(
                                  'Internal',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: true,
                              ),
                            );
                          }),
                        );
                      },
                    );
                  },
                ),
              if (widget.mls ?? true)
                FutureBuilder<ApiCallResponse>(
                  future: AirtableAPIsGroup.listTransactionsRecordsCall.call(
                    filterByFormula:
                        'SEARCH(\'${widget.searchText}\', {🏡 Address})',
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: EmptyWidget(),
                          ),
                        ),
                      );
                    }
                    final mLSAirtableListTransactionsRecordsResponse =
                        snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final record = functions
                            .nonNullList(
                                AirtableAPIsGroup.listTransactionsRecordsCall
                                    .recordList(
                                      mLSAirtableListTransactionsRecordsResponse
                                          .jsonBody,
                                    )
                                    .toList())
                            .toList();
                        if (record.isEmpty) {
                          return Center(
                            child: MLSBridgeAPIResultsWidget(
                              searchText: widget.searchText,
                            ),
                          );
                        }
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(record.length, (recordIndex) {
                            final recordItem = record[recordIndex];
                            return InkWell(
                              onTap: () async {
                                setState(() => FFAppState()
                                        .currentDisplayRecordID = getJsonField(
                                      recordItem,
                                      r'''$.id''',
                                    ).toString());
                                if (Navigator.of(context).canPop()) {
                                  context.pop();
                                }
                                context.pushNamed(
                                  'Home',
                                  queryParams: {
                                    'defaultPage': serializeParam(
                                      'PropertyDetails',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.database,
                                ),
                                title: Text(
                                  getJsonField(
                                    recordItem,
                                    r'''$.fields['🏡 Address']''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                                subtitle: Text(
                                  'Internal',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: true,
                              ),
                            );
                          }),
                        );
                      },
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
