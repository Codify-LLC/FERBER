import '../backend/api_requests/api_calls.dart';
import '../components/empty_search_result_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressBridgeAPIResultsWidget extends StatefulWidget {
  const AddressBridgeAPIResultsWidget({
    Key? key,
    this.searchText,
  }) : super(key: key);

  final String? searchText;

  @override
  _AddressBridgeAPIResultsWidgetState createState() =>
      _AddressBridgeAPIResultsWidgetState();
}

class _AddressBridgeAPIResultsWidgetState
    extends State<AddressBridgeAPIResultsWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: SearchByMLSorSTREETCall.call(
        unparsedAddress: widget.searchText,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingCircle(
                color: Color(0xFFD9180E),
                size: 50,
              ),
            ),
          );
        }
        final addressAPISearchByMLSorSTREETResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final record = SearchByMLSorSTREETCall.bundle(
              addressAPISearchByMLSorSTREETResponse.jsonBody,
            ).toList();
            if (record.isEmpty) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: EmptySearchResultWidget(),
              );
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(record.length, (recordIndex) {
                final recordItem = record[recordIndex];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 4, 4, 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          functions.imagePathFromList(
                              (SearchByMLSorSTREETCall.propertyPhoto(
                                addressAPISearchByMLSorSTREETResponse.jsonBody,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList(),
                              0),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: InkWell(
                          onTap: () async {
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
                            title: Text(
                              getJsonField(
                                recordItem,
                                r'''$.UnparsedAddress''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            subtitle: Text(
                              'External',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            );
          },
        );
      },
    );
  }
}
