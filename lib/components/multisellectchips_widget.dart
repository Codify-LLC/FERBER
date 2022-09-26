import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MultisellectchipsWidget extends StatefulWidget {
  const MultisellectchipsWidget({Key? key}) : super(key: key);

  @override
  _MultisellectchipsWidgetState createState() =>
      _MultisellectchipsWidgetState();
}

class _MultisellectchipsWidgetState extends State<MultisellectchipsWidget>
    with TickerProviderStateMixin {
  List<String>? choiceChipsValues;
  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 100),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 330,
              height: 80,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryColor,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Types of Financing Accepted ',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontSize: 14,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowChoiceChips(
                            initiallySelected: choiceChipsValues != null
                                ? choiceChipsValues
                                : [],
                            options: [
                              ChipData('FHA Eligible'),
                              ChipData('VA Eligible'),
                              ChipData('Conventional'),
                              ChipData('Cash')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChipsValues = val),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
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
                            chipSpacing: 10,
                            multiselect: true,
                            initialized: choiceChipsValues != null,
                            alignment: WrapAlignment.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ).animated([animationsMap['rowOnPageLoadAnimation']!]),
    );
  }
}
