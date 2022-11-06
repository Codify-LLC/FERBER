import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  String? choiceChipsValue;
  String? radioButtonValue1;
  String? radioButtonValue2;
  String? radioButtonValue3;
  String? radioButtonValue4;

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
            child: Container(
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          constraints: BoxConstraints(
            maxWidth: 400,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                child: FlutterFlowChoiceChips(
                  options: [
                    ChipData('Buyer', Icons.business),
                    ChipData('Seller', FontAwesomeIcons.dollarSign),
                    ChipData('Both', Icons.people)
                  ],
                  onChanged: (val) =>
                      setState(() => choiceChipsValue = val?.first),
                  selectedChipStyle: ChipStyle(
                    backgroundColor: Color(0xFF323B45),
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                        ),
                    iconColor: Colors.white,
                    iconSize: 18,
                    elevation: 4,
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Nunito',
                          color: Color(0xFF323B45),
                        ),
                    iconColor: Color(0xFF323B45),
                    iconSize: 18,
                    elevation: 4,
                  ),
                  chipSpacing: 10,
                  multiselect: false,
                  alignment: WrapAlignment.spaceBetween,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    initialExpanded: false,
                    child: ExpandablePanel(
                      header: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/images.png',
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                ' Inspection',
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Text(
                                'some text',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Get it by',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  'Fri, 11/11',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      collapsed: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Text(
                            'Get ypour house insppected for discounted rates...',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: Color(0x8A000000),
                                    ),
                          ),
                        ),
                      ),
                      expanded: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 8),
                            child: FlutterFlowRadioButton(
                              options: [
                                'Yes,\nUse my inspector',
                                'Send recommendations to \nthe buyer',
                                'No Inspection '
                              ].toList(),
                              initialValue: 'No Inspection ',
                              onChanged: (val) =>
                                  setState(() => radioButtonValue1 = val),
                              optionHeight: 55,
                              textStyle: FlutterFlowTheme.of(context).title3,
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Colors.blue,
                              inactiveRadioButtonColor: Color(0x8A000000),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Container(
                            width: 100,
                            constraints: BoxConstraints(
                              maxHeight: 150,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'TBD',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    'TBD',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    '\$0',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    initialExpanded: false,
                    child: ExpandablePanel(
                      header: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/For-Sale-Sign-Mockup-3.jpg',
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Signage',
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Text(
                                'Sign Installation',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Get it by',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  'Fri, 11/11',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      collapsed: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Text(
                            'Get ypour house insppected for discounted rates...',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: Color(0x8A000000),
                                    ),
                          ),
                        ),
                      ),
                      expanded: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 8),
                            child: FlutterFlowRadioButton(
                              options: ['Yes ', 'No', 'Maybe Later'].toList(),
                              onChanged: (val) =>
                                  setState(() => radioButtonValue2 = val),
                              optionHeight: 55,
                              textStyle: FlutterFlowTheme.of(context).title3,
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Colors.blue,
                              inactiveRadioButtonColor: Color(0x8A000000),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Container(
                            width: 100,
                            constraints: BoxConstraints(
                              maxHeight: 150,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$50',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    '\$0',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    'TBD',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    initialExpanded: false,
                    child: ExpandablePanel(
                      header: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/-_Shoot.webp',
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Photography',
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              Text(
                                'Drone, 3D Tour ..',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Get it by',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  'Thurs, 11/10',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      collapsed: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Text(
                            'HDR Photos, Drone Photos, 3D Tour, and Video Tour all included,',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: Color(0x8A000000),
                                    ),
                          ),
                        ),
                      ),
                      expanded: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 8),
                            child: FlutterFlowRadioButton(
                              options: ['Yes', 'No', 'Maybe Later'].toList(),
                              onChanged: (val) =>
                                  setState(() => radioButtonValue3 = val),
                              optionHeight: 55,
                              textStyle: FlutterFlowTheme.of(context).title3,
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Colors.blue,
                              inactiveRadioButtonColor: Color(0x8A000000),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Container(
                            width: 100,
                            constraints: BoxConstraints(
                              maxHeight: 150,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$150',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    '\$0',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    'TBD',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    initialExpanded: false,
                    child: ExpandablePanel(
                      header: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/logo.png',
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Coordinator',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  Text(
                                    'Your Superhero',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      collapsed: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Text(
                            'Get ypour house insppected for discounted rates...',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: Color(0x8A000000),
                                    ),
                          ),
                        ),
                      ),
                      expanded: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 8),
                            child: FlutterFlowRadioButton(
                              options:
                                  ['Self Service', 'Full Service'].toList(),
                              onChanged: (val) =>
                                  setState(() => radioButtonValue4 = val),
                              optionHeight: 55,
                              textStyle: FlutterFlowTheme.of(context).title3,
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Colors.blue,
                              inactiveRadioButtonColor: Color(0x8A000000),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Container(
                            width: 100,
                            constraints: BoxConstraints(
                              maxHeight: 150,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$30/Mo',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                  Text(
                                    '\$450',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 5),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Next Step',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lato',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text(
                'Back',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
