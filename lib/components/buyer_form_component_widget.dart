import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/all_contacts_widget.dart';
import '../components/document_type_selector_widget.dart';
import '../components/services_widget.dart';
import '../components/web_view_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:signature/signature.dart';

class BuyerFormComponentWidget extends StatefulWidget {
  const BuyerFormComponentWidget({
    Key? key,
    this.prefillAddress,
  }) : super(key: key);

  final String? prefillAddress;

  @override
  _BuyerFormComponentWidgetState createState() =>
      _BuyerFormComponentWidgetState();
}

class _BuyerFormComponentWidgetState extends State<BuyerFormComponentWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'dropDownOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'iconOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'iconOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'iconOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'iconOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 4,
          end: 0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0, 100),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  TextEditingController? additionalTermsTextFieldController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  String? typeofFinancingValue;
  TextEditingController? addressTextFieldController;
  TextEditingController? inspectionPeriodTextFieldController;
  TextEditingController? purchasePriceController2;
  TextEditingController? purchasePriceController1;
  TextEditingController? financedAmountTextFieldController1;
  TextEditingController? financedAmountTextFieldController2;
  String? choiceChipsValue;
  late SignatureController signatureController;
  bool? checkboxValue;
  String? statusDropDownValue;
  ApiCallResponse? apiResultcct;
  ApiCallResponse? apiResultp2v;
  String uploadedSignatureUrl = '';
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    additionalTermsTextFieldController = TextEditingController();
    addressTextFieldController =
        TextEditingController(text: widget.prefillAddress);
    inspectionPeriodTextFieldController = TextEditingController();
    purchasePriceController2 = TextEditingController();
    purchasePriceController1 = TextEditingController();
    financedAmountTextFieldController1 = TextEditingController();
    financedAmountTextFieldController2 = TextEditingController();
    signatureController = SignatureController(
      penStrokeWidth: 4,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    additionalTermsTextFieldController?.dispose();
    addressTextFieldController?.dispose();
    inspectionPeriodTextFieldController?.dispose();
    purchasePriceController2?.dispose();
    purchasePriceController1?.dispose();
    financedAmountTextFieldController1?.dispose();
    financedAmountTextFieldController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Type = Buyer Form
        Container(
      width: MediaQuery.of(context).size.width,
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      child: FlutterFlowDropDown<String>(
                        options: ['New Offer', 'Executed Contract'],
                        onChanged: (val) =>
                            setState(() => statusDropDownValue = val),
                        width: double.infinity,
                        height: 60,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Status',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF57636C),
                          size: 15,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).gray200,
                        borderWidth: 1,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(20, 20, 12, 20),
                        hidesUnderline: true,
                      ).animateOnPageLoad(
                          animationsMap['dropDownOnPageLoadAnimation']!),
                    ),
                    if (statusDropDownValue != null &&
                        statusDropDownValue != '')
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Visibility(
                                visible:
                                    statusDropDownValue != 'Executed Contract',
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: purchasePriceController1,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'purchasePriceController1',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Purchase Price',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 30,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 12, 12, 12),
                                      prefixIcon: Icon(
                                        Icons.attach_money,
                                        color: Color(0xFFA32019),
                                        size: 32,
                                      ),
                                      suffixIcon: purchasePriceController1!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                purchasePriceController1
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color: Color(0xFF757575),
                                                size: 22,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    textAlign: TextAlign.start,
                                    maxLines: null,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (statusDropDownValue != 'Executed Contract')
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 5, 0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: purchasePriceController2,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'purchasePriceController2',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Deposit',
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Nunito',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          prefixIcon: Icon(
                                            Icons.attach_money,
                                            color: Color(0xFFA32019),
                                            size: 28,
                                          ),
                                          suffixIcon: purchasePriceController2!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    purchasePriceController2
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 20,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        textAlign: TextAlign.start,
                                        maxLines: null,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 15, 0),
                                  child: TextFormField(
                                    controller:
                                        inspectionPeriodTextFieldController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'inspectionPeriodTextFieldController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Inspection Days',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 12, 12, 12),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 15,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (statusDropDownValue == 'New Offer')
                            Container(
                              decoration: BoxDecoration(),
                            ),
                          if (statusDropDownValue == 'New Offer')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  controller: addressTextFieldController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'addressTextFieldController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Address',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12, 12, 12, 12),
                                    suffixIcon: addressTextFieldController!
                                            .text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              addressTextFieldController
                                                  ?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                      ),
                                  maxLines: 3,
                                  minLines: 1,
                                  keyboardType: TextInputType.streetAddress,
                                ),
                              ),
                            ),
                          if (statusDropDownValue == 'New Offer')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Type of Financing',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 14,
                                        ),
                                  ),
                                  Container(
                                    width: 200,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: FlutterFlowChoiceChips(
                                        options: [
                                          ChipData('FHA'),
                                          ChipData('VA'),
                                          ChipData('Conventional'),
                                          ChipData('Cash')
                                        ],
                                        onChanged: (val) => setState(() =>
                                            typeofFinancingValue = val?.first),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: Colors.white,
                                                  ),
                                          iconColor: Colors.white,
                                          iconSize: 0,
                                          labelPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 4, 8, 4),
                                          elevation: 0,
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor: Colors.white,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: Color(0xFF323B45),
                                                  ),
                                          iconColor: Color(0xFF323B45),
                                          iconSize: 0,
                                          labelPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 4, 8, 4),
                                          elevation: 5,
                                        ),
                                        chipSpacing: 10,
                                        multiselect: false,
                                        alignment: WrapAlignment.spaceAround,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (typeofFinancingValue == 'Conventional')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: TextFormField(
                                        controller:
                                            financedAmountTextFieldController1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'financedAmountTextFieldController1',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Financed Amount',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          suffixIcon: FaIcon(
                                            FontAwesomeIcons.percentage,
                                            color: Color(0x7F757575),
                                            size: 30,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 16,
                                            ),
                                        keyboardType: const TextInputType
                                                .numberWithOptions(
                                            signed: true, decimal: true),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: TextFormField(
                                        controller:
                                            financedAmountTextFieldController2,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'financedAmountTextFieldController2',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Loan Period',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          suffixIcon: Icon(
                                            Icons.today_sharp,
                                            color: Color(0x7F757575),
                                            size: 30,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 16,
                                            ),
                                        keyboardType: const TextInputType
                                                .numberWithOptions(
                                            signed: true, decimal: true),
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation1']!),
                            ),
                          if (statusDropDownValue == 'New Offer')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  'Offer Expiration Date',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  dateTimeFormat(
                                                    'yMd',
                                                    datePicked1,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                // List Date (Active Date)
                                                if (kIsWeb) {
                                                  final _datePicked1Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (_datePicked1Date !=
                                                      null) {
                                                    setState(
                                                      () => datePicked1 =
                                                          DateTime(
                                                        _datePicked1Date.year,
                                                        _datePicked1Date.month,
                                                        _datePicked1Date.day,
                                                      ),
                                                    );
                                                  }
                                                } else {
                                                  await DatePicker
                                                      .showDatePicker(
                                                    context,
                                                    showTitleActions: true,
                                                    onConfirm: (date) {
                                                      setState(() =>
                                                          datePicked1 = date);
                                                    },
                                                    currentTime:
                                                        getCurrentTimestamp,
                                                    minTime: DateTime(0, 0, 0),
                                                    locale: LocaleType.values
                                                        .firstWhere(
                                                      (l) =>
                                                          l.name ==
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                      orElse: () =>
                                                          LocaleType.en,
                                                    ),
                                                  );
                                                }

                                                setState(() => FFAppState()
                                                        .OfferExpirationDate =
                                                    datePicked1);
                                              },
                                              child: Icon(
                                                Icons.calendar_today,
                                                color: Color(0xFF111111),
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  'Closing Date',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  dateTimeFormat(
                                                    'yMd',
                                                    datePicked2,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                // List Date (Active Date)
                                                if (kIsWeb) {
                                                  final _datePicked2Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (_datePicked2Date !=
                                                      null) {
                                                    setState(
                                                      () => datePicked2 =
                                                          DateTime(
                                                        _datePicked2Date.year,
                                                        _datePicked2Date.month,
                                                        _datePicked2Date.day,
                                                      ),
                                                    );
                                                  }
                                                } else {
                                                  await DatePicker
                                                      .showDatePicker(
                                                    context,
                                                    showTitleActions: true,
                                                    onConfirm: (date) {
                                                      setState(() =>
                                                          datePicked2 = date);
                                                    },
                                                    currentTime:
                                                        getCurrentTimestamp,
                                                    minTime: DateTime(0, 0, 0),
                                                    locale: LocaleType.values
                                                        .firstWhere(
                                                      (l) =>
                                                          l.name ==
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                      orElse: () =>
                                                          LocaleType.en,
                                                    ),
                                                  );
                                                }

                                                setState(() => FFAppState()
                                                    .ClosingDate = datePicked2);
                                              },
                                              child: Icon(
                                                Icons.calendar_today,
                                                color: Color(0xFF111111),
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation2']!),
                            ),
                          if (statusDropDownValue == 'New Offer')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Additional Terms',
                                      textAlign: TextAlign.start,
                                      style:
                                          FlutterFlowTheme.of(context).title2,
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.7, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('Added', Icons.check)
                                          ],
                                          onChanged: (val) => setState(() =>
                                              choiceChipsValue = val?.first),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .customColor1,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Color(0xFF323B45),
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .iconGray,
                                            iconSize: 18,
                                            elevation: 4,
                                          ),
                                          chipSpacing: 20,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation3']!),
                            ),
                          if (statusDropDownValue == 'New Offer')
                            Container(
                              decoration: BoxDecoration(),
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller:
                                            additionalTermsTextFieldController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'additionalTermsTextFieldController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Internal Notes',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          suffixIcon:
                                              additionalTermsTextFieldController!
                                                      .text.isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        additionalTermsTextFieldController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    )
                                                  : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontSize: 16,
                                            ),
                                        maxLines: 3,
                                        minLines: 1,
                                        keyboardType: TextInputType.multiline,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title:
                                                    Text('Additional Terms '),
                                                content: Text(
                                                    'Use the exact verbiage, spelling & punctuation you would like in the contract. This will be copied & pasted directly!\n*We are not responsible for your typos'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Icon(
                                          Icons.info_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation4']!),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      width: double.infinity,
                                      constraints: BoxConstraints(
                                        maxWidth: double.infinity,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 5, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Add Documents',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Pre Approval or Proof of Funds (POF)'),
                                                          content: Text(
                                                              'We will NOT send an offer without one!'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.info_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              if (FFAppState()
                                                          .ASISContractandetc !=
                                                      null &&
                                                  FFAppState()
                                                          .ASISContractandetc !=
                                                      '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 12, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Icon(
                                                          Icons.picture_as_pdf,
                                                          color: Colors.black,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          await launchURL(
                                                              FFAppState()
                                                                  .ASISContractandetc);
                                                        },
                                                        child: AutoSizeText(
                                                          'Purchase Contract',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              setState(() =>
                                                                  FFAppState()
                                                                          .ASISContractandetc =
                                                                      '');
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24,
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation1']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (FFAppState()
                                                          .PreApprovalProofofFunds !=
                                                      null &&
                                                  FFAppState()
                                                          .PreApprovalProofofFunds !=
                                                      '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 12, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Icon(
                                                          Icons.picture_as_pdf,
                                                          color: Colors.black,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          await launchURL(
                                                              FFAppState()
                                                                  .PreApprovalProofofFunds);
                                                        },
                                                        child: AutoSizeText(
                                                          'Proof of Funds',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              setState(() =>
                                                                  FFAppState()
                                                                          .PreApprovalProofofFunds =
                                                                      '');
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24,
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation2']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (FFAppState().MiscDocs1 !=
                                                      null &&
                                                  FFAppState().MiscDocs1 != '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 12, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Icon(
                                                          Icons.picture_as_pdf,
                                                          color: Colors.black,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          await launchURL(
                                                              FFAppState()
                                                                  .MiscDocs1);
                                                        },
                                                        child: AutoSizeText(
                                                          'Misc Docs',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              setState(() =>
                                                                  FFAppState()
                                                                          .MiscDocs1 =
                                                                      '');
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24,
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation3']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (FFAppState().MiscDocs2 !=
                                                      null &&
                                                  FFAppState().MiscDocs2 != '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 12, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Icon(
                                                          Icons.picture_as_pdf,
                                                          color: Colors.black,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          await launchURL(
                                                              FFAppState()
                                                                  .MiscDocs2);
                                                        },
                                                        child: AutoSizeText(
                                                          'Misc Docs',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              setState(() =>
                                                                  FFAppState()
                                                                          .MiscDocs2 =
                                                                      '');
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24,
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation4']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (FFAppState().MiscDocs3 !=
                                                      null &&
                                                  FFAppState().MiscDocs3 != '')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 12, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Icon(
                                                          Icons.picture_as_pdf,
                                                          color: Colors.black,
                                                          size: 24,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () async {
                                                          await launchURL(
                                                              FFAppState()
                                                                  .MiscDocs3);
                                                        },
                                                        child: AutoSizeText(
                                                          'Misc Docs',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              setState(() =>
                                                                  FFAppState()
                                                                          .MiscDocs3 =
                                                                      '');
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24,
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation5']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child:
                                                          DocumentTypeSelectorWidget(),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));

                                                if ((FFAppState()
                                                            .currentDocType ==
                                                        'Misc Docs') ||
                                                    (FFAppState()
                                                            .currentDocType ==
                                                        'AS-IS Contract') ||
                                                    (FFAppState()
                                                            .currentDocType ==
                                                        'POF')) {
                                                  final selectedFile =
                                                      await selectFile(
                                                          allowedExtensions: [
                                                        'pdf'
                                                      ]);
                                                  if (selectedFile != null) {
                                                    setState(() =>
                                                        isMediaUploading =
                                                            true);
                                                    String? downloadUrl;
                                                    try {
                                                      showUploadMessage(
                                                        context,
                                                        'Uploading file...',
                                                        showLoading: true,
                                                      );
                                                      downloadUrl =
                                                          await uploadData(
                                                              selectedFile
                                                                  .storagePath,
                                                              selectedFile
                                                                  .bytes);
                                                    } finally {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .hideCurrentSnackBar();
                                                      isMediaUploading = false;
                                                    }
                                                    if (downloadUrl != null) {
                                                      setState(() =>
                                                          uploadedFileUrl =
                                                              downloadUrl!);
                                                      showUploadMessage(
                                                        context,
                                                        'Success!',
                                                      );
                                                    } else {
                                                      setState(() {});
                                                      showUploadMessage(
                                                        context,
                                                        'Failed to upload file',
                                                      );
                                                      return;
                                                    }
                                                  }

                                                  if (FFAppState()
                                                          .currentDocType ==
                                                      'POF') {
                                                    setState(() => FFAppState()
                                                            .PreApprovalProofofFunds =
                                                        uploadedFileUrl);
                                                  } else {
                                                    if (FFAppState()
                                                            .currentDocType ==
                                                        'AS-IS Contract') {
                                                      setState(() => FFAppState()
                                                              .ASISContractandetc =
                                                          uploadedFileUrl);
                                                    } else {
                                                      if (FFAppState()
                                                              .currentDocType ==
                                                          'Misc Docs') {
                                                        if (FFAppState()
                                                                    .MiscDocs1 ==
                                                                null ||
                                                            FFAppState()
                                                                    .MiscDocs1 ==
                                                                '') {
                                                          setState(() => FFAppState()
                                                                  .MiscDocs1 =
                                                              uploadedFileUrl);
                                                        } else {
                                                          if (FFAppState()
                                                                      .MiscDocs2 ==
                                                                  null ||
                                                              FFAppState()
                                                                      .MiscDocs2 ==
                                                                  '') {
                                                            setState(() => FFAppState()
                                                                    .MiscDocs2 =
                                                                uploadedFileUrl);
                                                          } else {
                                                            setState(() => FFAppState()
                                                                    .MiscDocs3 =
                                                                uploadedFileUrl);
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              },
                                              text: 'Click to upload',
                                              icon: Icon(
                                                Icons.upload_file,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryColor,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.75, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 10),
                                  child: Text(
                                    'Add People',
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .grayDark,
                                          fontSize: 37,
                                          fontWeight: FontWeight.w900,
                                          lineHeight: 0.9,
                                        ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Icon(
                                      Icons.info_outline,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.8, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Add your client(s)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              child: AllContactsWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    text: 'Contacts',
                                    icon: Icon(
                                      Icons.people,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Colors.white,
                                          ),
                                      elevation: 5,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Builder(
                                      builder: (context) {
                                        final contact = FFAppState()
                                            .SellerFormContactsList
                                            .toList();
                                        return Wrap(
                                          spacing: 0,
                                          runSpacing: 0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.antiAlias,
                                          children: List.generate(
                                              contact.length, (contactIndex) {
                                            final contactItem =
                                                contact[contactIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1, -1),
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 8, 8, 8),
                                                      child: ClipOval(
                                                        child: Container(
                                                          width: 100,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child: AutoSizeText(
                                                              functions
                                                                  .initialsFromName(
                                                                      getJsonField(
                                                                    contactItem,
                                                                    r'''$.fields.Name''',
                                                                  ).toString())
                                                                  .maybeHandleOverflow(
                                                                      maxChars:
                                                                          2),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lato',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 50,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          getJsonField(
                                                            contactItem,
                                                            r'''$['Profile Picture'].url''',
                                                          ),
                                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/HD_transparent_picture.png/1280px-HD_transparent_picture.png',
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () async {
                                                        setState(() => FFAppState()
                                                            .SellerFormContactsList
                                                            .remove(
                                                                contactItem));
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidTimesCircle,
                                                        color: Colors.black,
                                                        size: 20,
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'iconOnPageLoadAnimation6']!),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 5, 5, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Review & Sign',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w900,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                            ),
                                            Text(
                                              'CLEAR',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ClipRect(
                                        child: Signature(
                                          controller: signatureController,
                                          backgroundColor: Color(0x80DBE2E7),
                                          width: double.infinity,
                                          height: 150,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 5),
                            child: InkWell(
                              onTap: () async {
                                setState(() =>
                                    FFAppState().TermsOfServiceAccepted = true);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryColor,
                                    ),
                                    child: Checkbox(
                                      value: checkboxValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(
                                            () => checkboxValue = newValue!);
                                      },
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                child: WebViewWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Text(
                                        'I have read Terms & Conditions',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (statusDropDownValue == null ||
                        statusDropDownValue == '')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                        child: Lottie.asset(
                          'assets/lottie_animations/12469-information-icon.json',
                          width: 150,
                          height: 130,
                          fit: BoxFit.contain,
                          repeat: false,
                          animate: true,
                        ),
                      ),
                    if (statusDropDownValue == null ||
                        statusDropDownValue == '')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: Text(
                          'Please select the current status of your transaction',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 22),
              child: FFButtonWidget(
                onPressed: () async {
                  if (checkboxValue!) {
                    final signatureImage =
                        await signatureController.toPngBytes();

                    if (signatureImage == null) {
                      return;
                    }

                    showUploadMessage(
                      context,
                      'Uploading signature...',
                      showLoading: true,
                    );
                    final downloadUrl = (await uploadData(
                        signatureStoragePath(currentUserUid), signatureImage));

                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    if (downloadUrl != null) {
                      setState(() => uploadedSignatureUrl = downloadUrl);
                      showUploadMessage(
                        context,
                        'Success!',
                      );
                    } else {
                      showUploadMessage(
                        context,
                        'Failed to upload signature',
                      );
                      return;
                    }

                    if (statusDropDownValue == 'New Offer') {
                      apiResultp2v = await MyGateWayHookCall.call();
                      if ((apiResultp2v?.succeeded ?? true)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Record Created',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).customColor1,
                          ),
                        );
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: ServicesWidget(
                                type: 'Buyer',
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              getJsonField(
                                (apiResultp2v?.jsonBody ?? ''),
                                r'''$''',
                              ).toString(),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        );
                      }
                    } else {
                      apiResultcct = await AirtableAPIsGroup
                          .createBuyerExecutedContractTransactionRecordCall
                          .call(
                        preApprovalProofOfFunds:
                            FFAppState().PreApprovalProofofFunds,
                        aSISContractAndEtc: FFAppState().ASISContractandetc,
                        miscDocs1: FFAppState().MiscDocs1,
                        miscDocs2: FFAppState().MiscDocs2,
                        miscDocs3: FFAppState().MiscDocs3,
                        signature: uploadedSignatureUrl,
                      );
                      if ((apiResultcct?.succeeded ?? true)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Record Created',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).customColor1,
                          ),
                        );
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: ServicesWidget(
                                type: 'Buyer',
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              getJsonField(
                                (apiResultcct?.jsonBody ?? ''),
                                r'''$''',
                              ).toString(),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        );
                      }
                    }
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text(
                              'Please accept the terms & conditions before proceeding'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  }

                  setState(() {});
                },
                text: 'Next Step',
                options: FFButtonOptions(
                  width: 250,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 16,
                      ),
                  elevation: 0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation']!),
            ),
          ],
        ),
      ),
    );
  }
}
