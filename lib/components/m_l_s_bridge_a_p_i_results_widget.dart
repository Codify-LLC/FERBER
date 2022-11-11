import '../backend/api_requests/api_calls.dart';
import '../components/empty_search_result_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MLSBridgeAPIResultsWidget extends StatefulWidget {
  const MLSBridgeAPIResultsWidget({
    Key? key,
    this.searchText,
  }) : super(key: key);

  final String? searchText;

  @override
  _MLSBridgeAPIResultsWidgetState createState() =>
      _MLSBridgeAPIResultsWidgetState();
}

class _MLSBridgeAPIResultsWidgetState extends State<MLSBridgeAPIResultsWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: SearchByMLSorSTREETCall.call(
        listingId: widget.searchText,
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
        final mlsapiSearchByMLSorSTREETResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final address = SearchByMLSorSTREETCall.bundle(
              mlsapiSearchByMLSorSTREETResponse.jsonBody,
            ).toList();
            if (address.isEmpty) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: EmptySearchResultWidget(),
              );
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(address.length, (addressIndex) {
                final addressItem = address[addressIndex];
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
                                mlsapiSearchByMLSorSTREETResponse.jsonBody,
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
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            getJsonField(
                              addressItem,
                              r'''$.UnparsedAddress''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'External',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Colors.transparent,
                          dense: false,
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
