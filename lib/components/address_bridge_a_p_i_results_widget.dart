import '../backend/api_requests/api_calls.dart';
import '../components/empty_search_result_widget.dart';
import '../components/empty_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: EmptyWidget(),
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
                return InkWell(
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
                    leading: FaIcon(
                      FontAwesomeIcons.globe,
                    ),
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
                );
              }),
            );
          },
        );
      },
    );
  }
}
