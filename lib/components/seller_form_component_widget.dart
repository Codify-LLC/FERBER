import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/all_contacts_widget.dart';
import '../components/document_type_selector_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
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

class SellerFormComponentWidget extends StatefulWidget {
  const SellerFormComponentWidget({Key? key}) : super(key: key);

  @override
  _SellerFormComponentWidgetState createState() =>
      _SellerFormComponentWidgetState();
}

class _SellerFormComponentWidgetState extends State<SellerFormComponentWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
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
    'iconOnPageLoadAnimation7': AnimationInfo(
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
  };
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  DateTime? datePicked1;
  DateTime? datePicked2;
  List<String>? choiceChipsValues;
  TextEditingController? addressTextFieldController;
  TextEditingController? listingPriceController;
  TextEditingController? totalCommissionController;
  TextEditingController? cooperatingBrokerCommissionController;
  TextEditingController? listingAgentCommissionController;
  TextEditingController? additionalTermsController;
  TextEditingController? notesController;
  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  late SignatureController signatureController;
  bool? checkboxListTileValue;
  String? statusDropDownValue;
  ApiCallResponse? apiResultmiv2;
  ApiCallResponse? apiResultmiv;
  String uploadedSignatureUrl = '';
  ApiCallResponse? apiResultmiv3;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    additionalTermsController = TextEditingController();
    addressTextFieldController = TextEditingController();
    listingPriceController = TextEditingController();
    totalCommissionController = TextEditingController();
    cooperatingBrokerCommissionController = TextEditingController();
    listingAgentCommissionController = TextEditingController();
    notesController = TextEditingController();
    signatureController = SignatureController(
      penStrokeWidth: 4,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    additionalTermsController?.dispose();
    addressTextFieldController?.dispose();
    listingPriceController?.dispose();
    totalCommissionController?.dispose();
    cooperatingBrokerCommissionController?.dispose();
    listingAgentCommissionController?.dispose();
    notesController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    child: FlutterFlowDropDown<String>(
                      options: [
                        'Active Listing',
                        'Pre-listing',
                        'Executed Contract'
                      ],
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
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      elevation: 2,
                      borderColor: FlutterFlowTheme.of(context).gray200,
                      borderWidth: 1,
                      borderRadius: 8,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      hidesUnderline: true,
                    ),
                  ),
                  if (statusDropDownValue != null && statusDropDownValue != '')
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if ((statusDropDownValue != 'Executed Contract') &&
                            (statusDropDownValue != 'Active Listing'))
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: TextFormField(
                              controller: listingPriceController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'listingPriceController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Listing Price',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: Color(0x7F000000),
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
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                prefixIcon: Icon(
                                  Icons.attach_money,
                                  color: Color(0xFFA32019),
                                  size: 32,
                                ),
                                suffixIcon:
                                    listingPriceController!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              listingPriceController?.clear();
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
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        if ((statusDropDownValue != 'Executed Contract') &&
                            (statusDropDownValue != 'Active Listing'))
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: TextFormField(
                              controller: addressTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'addressTextFieldController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Address  ',
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
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                suffixIcon: addressTextFieldController!
                                        .text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          addressTextFieldController?.clear();
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
                        if (statusDropDownValue == 'Pre-listing')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Types of Financing Accepted ',
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
                                      onChanged: (val) => setState(
                                          () => choiceChipsValues = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        textStyle: FlutterFlowTheme.of(context)
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
                                      multiselect: true,
                                      initialized: choiceChipsValues != null,
                                      alignment: WrapAlignment.spaceAround,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (statusDropDownValue == 'Pre-listing')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
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
                                                'List Date (Active Date)',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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

                                                if (_datePicked1Date != null) {
                                                  setState(
                                                    () =>
                                                        datePicked1 = DateTime(
                                                      _datePicked1Date.year,
                                                      _datePicked1Date.month,
                                                      _datePicked1Date.day,
                                                    ),
                                                  );
                                                }
                                              } else {
                                                await DatePicker.showDatePicker(
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
                                                    orElse: () => LocaleType.en,
                                                  ),
                                                );
                                              }

                                              setState(() => FFAppState()
                                                      .ListingDateActiveDate =
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
                                                'Listing Expiration Date ',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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

                                                if (_datePicked2Date != null) {
                                                  setState(
                                                    () =>
                                                        datePicked2 = DateTime(
                                                      _datePicked2Date.year,
                                                      _datePicked2Date.month,
                                                      _datePicked2Date.day,
                                                    ),
                                                  );
                                                }
                                              } else {
                                                await DatePicker.showDatePicker(
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
                                                    orElse: () => LocaleType.en,
                                                  ),
                                                );
                                              }

                                              setState(() => FFAppState()
                                                      .ListingExpirationDate =
                                                  datePicked2);
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
                            ),
                          ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
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
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: List.generate(contact.length,
                                          (contactIndex) {
                                        final contactItem =
                                            contact[contactIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 2, 2, 2),
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            child: Stack(
                                              alignment:
                                                  AlignmentDirectional(1, -1),
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 8, 8, 8),
                                                  child: ClipOval(
                                                    child: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: SelectionArea(
                                                            child: AutoSizeText(
                                                          functions
                                                              .initialsFromName(
                                                                  getJsonField(
                                                                contactItem,
                                                                r'''$.fields.Name''',
                                                              ).toString())
                                                              .maybeHandleOverflow(
                                                                  maxChars: 2),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Lato',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                        )),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 50,
                                                  height: 50,
                                                  clipBehavior: Clip.antiAlias,
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
                                                        .remove(contactItem));
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidTimesCircle,
                                                    color: Colors.black,
                                                    size: 20,
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconOnPageLoadAnimation1']!),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            child: AllContactsWidget(
                                              formType: 'Seller',
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  text: 'Add Contact',
                                  icon: Icon(
                                    Icons.contacts,
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
                            ],
                          ),
                        ),
                        if (statusDropDownValue == 'Pre-listing')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: totalCommissionController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Total Commission ',
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
                                      suffixIcon: FaIcon(
                                        FontAwesomeIcons.percentage,
                                        color: Color(0xFF757575),
                                        size: 30,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 16,
                                        ),
                                    keyboardType: TextInputType.number,
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
                                            title: Text('Total Commission '),
                                            content: Text(
                                                'Total Commission paid by Seller (Both Sides)'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
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
                                      color: Color(0xFF111111),
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (statusDropDownValue == 'Pre-listing')
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 6, 0),
                                  child: TextFormField(
                                    controller:
                                        cooperatingBrokerCommissionController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Co-op Broker\nCommission ',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .subtitle1,
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
                                      suffixIcon: FaIcon(
                                        FontAwesomeIcons.percentage,
                                        color: Color(0xFF757575),
                                        size: 30,
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                            if (statusDropDownValue == 'Pre-listing')
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6, 0, 12, 0),
                                  child: TextFormField(
                                    controller:
                                        listingAgentCommissionController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Listing Agent\nCommission ',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
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
                                      suffixIcon: FaIcon(
                                        FontAwesomeIcons.percentage,
                                        color: Color(0xFF757575),
                                        size: 30,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 16,
                                        ),
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        if (statusDropDownValue == 'Pre-listing')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: additionalTermsController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'additionalTermsController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Additional Terms.',
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
                                      suffixIcon: additionalTermsController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                additionalTermsController
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
                                    maxLines: 100,
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
                                            title: Text('Additional Terms'),
                                            content: Text(
                                                'Example: Cancellation Fee'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
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
                                      color: Color(0xFF111111),
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: notesController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'notesController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Notes',
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
                                    suffixIcon: notesController!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              notesController?.clear();
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
                                  maxLines: 100,
                                  minLines: 1,
                                  keyboardType: TextInputType.multiline,
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'Field is required';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Additional Terms'),
                                          content:
                                              Text('Example: Cancellation Fee'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
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
                                    color: Color(0xFF111111),
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (statusDropDownValue != 'Pre-listing')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
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
                                                  'Docs',
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
                                              if (FFAppState().ListingDocs1 !=
                                                      null &&
                                                  FFAppState().ListingDocs1 !=
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
                                                          'Listing Doc 1',
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
                                                                          .ListingDocs1 =
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
                                              if (FFAppState().ListingDocs2 !=
                                                      null &&
                                                  FFAppState().ListingDocs2 !=
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
                                                          'Listing Doc 2',
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
                                                                          .ListingDocs2 =
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
                                              if (FFAppState().ListingDocs3 !=
                                                      null &&
                                                  FFAppState().ListingDocs3 !=
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
                                                                  .MiscDocs1);
                                                        },
                                                        child: AutoSizeText(
                                                          'Listing Doc 3',
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
                                                                          .ListingDocs3 =
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
                                              if (FFAppState().ListingDocs4 !=
                                                      null &&
                                                  FFAppState().ListingDocs4 !=
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
                                                                  .MiscDocs2);
                                                        },
                                                        child: AutoSizeText(
                                                          'Listing Doc 4',
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
                                                                          .ListingDocs4 =
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
                                              if (FFAppState().ListingDocs5 !=
                                                      null &&
                                                  FFAppState().ListingDocs5 !=
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
                                                                  .MiscDocs3);
                                                        },
                                                        child: AutoSizeText(
                                                          'Listing Doc 5',
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
                                                                          .ListingDocs5 =
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
                                                                  'iconOnPageLoadAnimation6']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                          if (FFAppState().ASISContractandetc !=
                                                  null &&
                                              FFAppState().ASISContractandetc !=
                                                  '')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 12, 0),
                                                    child: Icon(
                                                      Icons.picture_as_pdf,
                                                      color: Colors.black,
                                                      size: 24,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      await launchURL(FFAppState()
                                                          .ASISContractandetc);
                                                    },
                                                    child: AutoSizeText(
                                                      'AS-IS Contract & etc',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                              'iconOnPageLoadAnimation7']!),
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                                                          DocumentTypeSelectorWidget(
                                                        status:
                                                            statusDropDownValue,
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));

                                                final selectedFile =
                                                    await selectFile(
                                                        allowedExtensions: [
                                                      'pdf'
                                                    ]);
                                                if (selectedFile != null) {
                                                  setState(() =>
                                                      isMediaUploading1 = true);
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
                                                            selectedFile.bytes);
                                                  } finally {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .hideCurrentSnackBar();
                                                    isMediaUploading1 = false;
                                                  }
                                                  if (downloadUrl != null) {
                                                    setState(() =>
                                                        uploadedFileUrl1 =
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
                                                    'Listing Docs') {
                                                  if (FFAppState()
                                                              .ListingDocs1 ==
                                                          null ||
                                                      FFAppState()
                                                              .ListingDocs1 ==
                                                          '') {
                                                    setState(() => FFAppState()
                                                            .ListingDocs1 =
                                                        uploadedFileUrl1);
                                                  } else {
                                                    if (FFAppState()
                                                                .ListingDocs2 ==
                                                            null ||
                                                        FFAppState()
                                                                .ListingDocs2 ==
                                                            '') {
                                                      setState(() => FFAppState()
                                                              .ListingDocs2 =
                                                          uploadedFileUrl1);
                                                    } else {
                                                      if (FFAppState()
                                                                  .ListingDocs3 ==
                                                              null ||
                                                          FFAppState()
                                                                  .ListingDocs3 ==
                                                              '') {
                                                        setState(() => FFAppState()
                                                                .ListingDocs3 =
                                                            uploadedFileUrl1);
                                                      } else {
                                                        if (FFAppState()
                                                                    .ListingDocs4 ==
                                                                null ||
                                                            FFAppState()
                                                                    .ListingDocs4 ==
                                                                '') {
                                                          setState(() => FFAppState()
                                                                  .ListingDocs4 =
                                                              uploadedFileUrl1);
                                                        } else {
                                                          if (FFAppState()
                                                                      .ListingDocs5 ==
                                                                  null ||
                                                              FFAppState()
                                                                      .ListingDocs5 ==
                                                                  '') {
                                                            setState(() => FFAppState()
                                                                    .ListingDocs5 =
                                                                uploadedFileUrl1);
                                                          } else {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Highest Document Upload Limit Reached',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    Color(
                                                                        0x00000000),
                                                              ),
                                                            );
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                } else {
                                                  setState(() => FFAppState()
                                                          .ASISContractandetc =
                                                      uploadedFileUrl1);
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
                              ],
                            ),
                          ),
                        if (statusDropDownValue == 'Executed Contract')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 5, 10, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Upload Photos',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 14,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 0),
                                        child: Builder(
                                          builder: (context) {
                                            final photo = FFAppState()
                                                .propertyPhotosUploaded
                                                .toList();
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: photo.length,
                                              itemBuilder:
                                                  (context, photoIndex) {
                                                final photoItem =
                                                    photo[photoIndex];
                                                return Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1, -1),
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: functions
                                                              .stringtoImage(
                                                                  photoItem),
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 4,
                                                      borderWidth: 1,
                                                      buttonSize: 30,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      icon: Icon(
                                                        Icons.close,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 12,
                                                      ),
                                                      onPressed: () async {
                                                        setState(() => FFAppState()
                                                            .propertyPhotosUploaded
                                                            .remove(photoItem));
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 12, 12, 12),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            setState(
                                                () => isMediaUploading2 = true);
                                            var downloadUrls = <String>[];
                                            try {
                                              showUploadMessage(
                                                context,
                                                'Uploading file...',
                                                showLoading: true,
                                              );
                                              downloadUrls = (await Future.wait(
                                                selectedMedia.map(
                                                  (m) async => await uploadData(
                                                      m.storagePath, m.bytes),
                                                ),
                                              ))
                                                  .where((u) => u != null)
                                                  .map((u) => u!)
                                                  .toList();
                                            } finally {
                                              ScaffoldMessenger.of(context)
                                                  .hideCurrentSnackBar();
                                              isMediaUploading2 = false;
                                            }
                                            if (downloadUrls.length ==
                                                selectedMedia.length) {
                                              setState(() => uploadedFileUrl2 =
                                                  downloadUrls.first);
                                              showUploadMessage(
                                                  context, 'Success!');
                                            } else {
                                              setState(() {});
                                              showUploadMessage(context,
                                                  'Failed to upload media');
                                              return;
                                            }
                                          }

                                          if (uploadedFileUrl2 != null &&
                                              uploadedFileUrl2 != '') {
                                            setState(() => FFAppState()
                                                .propertyPhotosUploaded
                                                .add(uploadedFileUrl2));
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Lato',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                        if (statusDropDownValue == 'Executed Contract')
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
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
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Signature Pad ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 14,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              setState(() {
                                                signatureController.clear();
                                              });
                                            },
                                            child: Icon(
                                              Icons.close,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: ClipRect(
                                        child: Signature(
                                          controller: signatureController,
                                          backgroundColor: Color(0x80DBE2E7),
                                          width: double.infinity,
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue = newValue!);
                                  },
                                  title: Text(
                                    'I Agree to Terms & Conditions',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          40, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (statusDropDownValue == null || statusDropDownValue == '')
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
                  if (statusDropDownValue == null || statusDropDownValue == '')
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
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
              child: FFButtonWidget(
                onPressed: () async {
                  if (checkboxListTileValue!) {
                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Validate Information'),
                              content: Text(
                                  'Confirm the accuracy of the data provided by you before proceeding to the best of your ability.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: Text('Confirm'),
                                ),
                              ],
                            );
                          },
                        ) ??
                        false;
                    if (confirmDialogResponse) {
                      if (statusDropDownValue == 'Active Listing') {
                        apiResultmiv = await AirtableAPIsGroup
                            .createSellerActiveListingRecordCall
                            .call(
                          buyerSellerContactsList: functions.contactRecordID(
                              FFAppState().SellerFormContactsList.toList()),
                          listingDocs1: FFAppState().ListingDocs1,
                          listingDocs3: FFAppState().ListingDocs3,
                          listingDocs2: FFAppState().ListingDocs2,
                          listingDocs4: FFAppState().ListingDocs4,
                          listingDocs5: FFAppState().ListingDocs5,
                        );
                        if ((apiResultmiv?.succeeded ?? true)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Record Created',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).customColor1,
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                getJsonField(
                                  (apiResultmiv?.jsonBody ?? ''),
                                  r'''$''',
                                ).toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).customColor1,
                            ),
                          );
                        }
                      } else {
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
                            signatureStoragePath(currentUserUid),
                            signatureImage));

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

                        if (statusDropDownValue == 'Pre-listing') {
                          apiResultmiv2 = await AirtableAPIsGroup
                              .createSellerPreListingRecordCall
                              .call(
                            listingPrice:
                                int.parse(listingPriceController!.text),
                            typesOfFinancingAcceptedList: choiceChipsValues,
                            address: addressTextFieldController!.text,
                            listingDate:
                                functions.toIso8601String(datePicked1!),
                            activeDate: functions.toIso8601String(datePicked1!),
                            buyerSellerContactList: functions.contactRecordID(
                                FFAppState().SellerFormContactsList.toList()),
                            totalCommision:
                                double.parse(totalCommissionController!.text),
                            listingAgentCommission:
                                listingAgentCommissionController!.text,
                            coOpBrokerCommission: double.parse(
                                cooperatingBrokerCommissionController!.text),
                            additionalTerms: additionalTermsController!.text,
                            notes: notesController!.text,
                          );
                          if ((apiResultmiv2?.succeeded ?? true)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Record Created',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).customColor1,
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  getJsonField(
                                    (apiResultmiv2?.jsonBody ?? ''),
                                    r'''$''',
                                  ).toString(),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).customColor1,
                              ),
                            );
                          }
                        } else {
                          apiResultmiv3 = await AirtableAPIsGroup
                              .createSellerExecutedContractCall
                              .call(
                            ourClientBuyerSELLERFormList:
                                functions.contactRecordID(FFAppState()
                                    .SellerFormContactsList
                                    .toList()),
                            notes: notesController!.text,
                            listingDocs1: FFAppState().ListingDocs1,
                            listingDocs2: FFAppState().ListingDocs2,
                            listingDocs3: FFAppState().ListingDocs3,
                            listingDocs4: FFAppState().ListingDocs4,
                            listingDocs5: FFAppState().ListingDocs5,
                            asIsContractAndEtc: FFAppState().ASISContractandetc,
                            uploadPhotoList: functions.attachmentListFromURLs(
                                FFAppState().propertyPhotosUploaded.toList()),
                            signature: uploadedFileUrl2,
                          );
                          if ((apiResultmiv3?.succeeded ?? true)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Record Created',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).customColor1,
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  getJsonField(
                                    (apiResultmiv3?.jsonBody ?? ''),
                                    r'''$''',
                                  ).toString(),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).customColor1,
                              ),
                            );
                          }
                        }
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
          ),
        ],
      ),
    );
  }
}
