import '../components/buyer_form_component_widget.dart';
import '../components/seller_form_component_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerAndSellerFormWidget extends StatefulWidget {
  const BuyerAndSellerFormWidget({
    Key? key,
    this.prefillAddress,
  }) : super(key: key);

  final String? prefillAddress;

  @override
  _BuyerAndSellerFormWidgetState createState() =>
      _BuyerAndSellerFormWidgetState();
}

class _BuyerAndSellerFormWidgetState extends State<BuyerAndSellerFormWidget> {
  String? choiceChipsValue;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Expanded(
                  flex: 25,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              Expanded(
                flex: 75,
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  child: ClipRRect(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Icon(
                                    Icons.info_outline_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                                SelectionArea(
                                    child: Text(
                                  'Start by choosing a type',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 20,
                                      ),
                                )),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: FlutterFlowChoiceChips(
                                  options: [
                                    ChipData('Buyer', Icons.business),
                                    ChipData(
                                        'Seller', FontAwesomeIcons.dollarSign),
                                    ChipData('Both', Icons.people)
                                  ],
                                  onChanged: (val) => setState(
                                      () => choiceChipsValue = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: Color(0xFF323B45),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                        ),
                                    iconColor: Colors.white,
                                    iconSize: 18,
                                    elevation: 4,
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Color(0xFF323B45),
                                        ),
                                    iconColor: Color(0xFF323B45),
                                    iconSize: 18,
                                    elevation: 4,
                                  ),
                                  chipSpacing: 0,
                                  multiselect: false,
                                  alignment: WrapAlignment.spaceEvenly,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 12, 8, 12),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 1),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 1,
                                          buttonSize: 40,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: Icon(
                                            Icons.close,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Stack(
                              alignment: AlignmentDirectional(1, -1),
                              children: [
                                if (choiceChipsValue == 'Seller')
                                  SellerFormComponentWidget(),
                                if (choiceChipsValue == 'Buyer')
                                  BuyerFormComponentWidget(
                                    prefillAddress: widget.prefillAddress,
                                  ),
                              ],
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
  }
}
