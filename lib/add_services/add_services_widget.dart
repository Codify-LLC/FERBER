import '../components/add_contects_widget.dart';
import '../components/all_contacts_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../success_new/success_new_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddServicesWidget extends StatefulWidget {
  const AddServicesWidget({
    Key? key,
    this.isBuyer,
    this.isSeller,
  }) : super(key: key);

  final bool? isBuyer;
  final bool? isSeller;

  @override
  _AddServicesWidgetState createState() => _AddServicesWidgetState();
}

class _AddServicesWidgetState extends State<AddServicesWidget>
    with TickerProviderStateMixin {
  TextEditingController? listDateActiveDateController1;

  DateTime? datePicked1;
  String? photopgraphySigninstallValue;
  bool? checkboxListTileValue;
  String? inspectionValue;

  TextEditingController? listDateActiveDateController2;

  DateTime? datePicked2;
  String? titleOfficerSellerValue;
  String? tcValue;
  String? lenderBuyerValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'dropDownOnPageLoadAnimation1': AnimationInfo(
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
    'rowOnPageLoadAnimation1': AnimationInfo(
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
    'rowOnPageLoadAnimation2': AnimationInfo(
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
    'dropDownOnPageLoadAnimation2': AnimationInfo(
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
    'rowOnPageLoadAnimation3': AnimationInfo(
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
    'dropDownOnPageLoadAnimation3': AnimationInfo(
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
    'dropDownOnPageLoadAnimation4': AnimationInfo(
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
    'dropDownOnPageLoadAnimation5': AnimationInfo(
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

    listDateActiveDateController1 =
        TextEditingController(text: dateTimeFormat('yMd', datePicked1));
    listDateActiveDateController2 =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).black600,
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Services',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 28,
                                        fontWeight: FontWeight.normal,
                                      ),
                            ),
                            InkWell(
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 48,
                                  fillColor: Color(0xFFF1F4F8),
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: Color(0xFFD22C23),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (widget.isSeller == true)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'ASAP',
                                'Specific Date',
                                'Let Client Decide',
                                'Do Not Order'
                              ],
                              onChanged: (val) => setState(
                                  () => photopgraphySigninstallValue = val),
                              width: 330,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'Photopgraphy & Sign install',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Color(0xFFF1F4F8),
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation1']!
                            ]),
                          ),
                        if (photopgraphySigninstallValue == 'ASAP')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
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
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 10, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Vendors',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 14,
                                                        ),
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
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
                                                        child: Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          child:
                                                              AddContectsWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ListView(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Color(0xFF95A1AC),
                                              ),
                                              child: CheckboxListTile(
                                                value: checkboxListTileValue ??=
                                                    false,
                                                onChanged: (newValue) =>
                                                    setState(() =>
                                                        checkboxListTileValue =
                                                            newValue!),
                                                title: Text(
                                                  'Title',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                                subtitle: Text(
                                                  'Subtitle',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2,
                                                ),
                                                tileColor: Color(0xFFF5F5F5),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                dense: false,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 5, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
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
                                                        child: Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          child:
                                                              AllContactsWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  'See All Contacts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ).animated(
                                [animationsMap['rowOnPageLoadAnimation1']!]),
                          ),
                        if (photopgraphySigninstallValue == 'Specific Date')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: Container(
                                    width: 280,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: TextFormField(
                                              controller:
                                                  listDateActiveDateController1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Photopgraphy Date',
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(8),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        // List Date (Active Date)
                                        await DatePicker.showDatePicker(
                                          context,
                                          showTitleActions: true,
                                          onConfirm: (date) {
                                            setState(() => datePicked1 = date);
                                          },
                                          currentTime: getCurrentTimestamp,
                                          minTime: DateTime(0, 0, 0),
                                          locale: LocaleType.values.firstWhere(
                                            (l) =>
                                                l.name ==
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                            orElse: () => LocaleType.en,
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ).animated(
                                [animationsMap['rowOnPageLoadAnimation2']!]),
                          ),
                        if (widget.isBuyer == true)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'ASAP',
                                'Let Client Decide',
                                'Specific Date',
                                'No Inspection'
                              ],
                              onChanged: (val) =>
                                  setState(() => inspectionValue = val),
                              width: 330,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: ' Inspection',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Color(0xFFF1F4F8),
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation2']!
                            ]),
                          ),
                        if (inspectionValue == 'Specific Date')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: Container(
                                    width: 280,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: TextFormField(
                                              controller:
                                                  listDateActiveDateController2,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: ' Inspection Date',
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(4.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(8),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        // List Date (Active Date)
                                        await DatePicker.showDatePicker(
                                          context,
                                          showTitleActions: true,
                                          onConfirm: (date) {
                                            setState(() => datePicked2 = date);
                                          },
                                          currentTime: getCurrentTimestamp,
                                          minTime: DateTime(0, 0, 0),
                                          locale: LocaleType.values.firstWhere(
                                            (l) =>
                                                l.name ==
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                            orElse: () => LocaleType.en,
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ).animated(
                                [animationsMap['rowOnPageLoadAnimation3']!]),
                          ),
                        if (widget.isBuyer == true)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'Let Client Decide',
                                'Pick One',
                                'Pick Later'
                              ],
                              onChanged: (val) =>
                                  setState(() => titleOfficerSellerValue = val),
                              width: 330,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'Title Company',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Color(0xFFF1F4F8),
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation3']!
                            ]),
                          ),
                        if (widget.isBuyer == true)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'Let Client Decide',
                                'Pick One',
                                'Pick Later'
                              ],
                              onChanged: (val) => setState(() => tcValue = val),
                              width: 330,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'Transaction Coordinator',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Color(0xFFF1F4F8),
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation4']!
                            ]),
                          ),
                        if (widget.isBuyer == true)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: FlutterFlowDropDown(
                              options: [
                                'Let Client Decide',
                                'Pick One',
                                'Pick Later'
                              ],
                              onChanged: (val) =>
                                  setState(() => lenderBuyerValue = val),
                              width: 330,
                              height: 60,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'Lender',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Color(0xFFF1F4F8),
                              borderWidth: 2,
                              borderRadius: 8,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 12, 20),
                              hidesUnderline: true,
                            ).animated([
                              animationsMap['dropDownOnPageLoadAnimation5']!
                            ]),
                          ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/card_bg@2x.png',
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          if (formKey.currentState == null ||
                              !formKey.currentState!.validate()) {
                            return;
                          }

                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuccessNewWidget(),
                            ),
                          );
                        },
                        text: 'Next Step',
                        options: FFButtonOptions(
                          width: 300,
                          height: 70,
                          color: FlutterFlowTheme.of(context).black600,
                          textStyle:
                              FlutterFlowTheme.of(context).title2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
