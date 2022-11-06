import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/all_contacts_widget.dart';
import '../components/web_view_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
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

class SellerFormComponentWidget extends StatefulWidget {
  const SellerFormComponentWidget({Key? key}) : super(key: key);

  @override
  _SellerFormComponentWidgetState createState() =>
      _SellerFormComponentWidgetState();
}

class _SellerFormComponentWidgetState extends State<SellerFormComponentWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'iconOnPageLoadAnimation': AnimationInfo(
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
  TextEditingController? listingAgentCommissionController;
  TextEditingController? cooperatingBrokerCommissionController;
  TextEditingController? additionalTermsController;
  TextEditingController? notesController;
  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  bool isMediaUploading3 = false;
  String uploadedFileUrl3 = '';

  late SignatureController signatureController;
  bool? checkboxValue;
  String? statusDropDownValue;
  ApiCallResponse? apiResultmiv;
  String uploadedSignatureUrl = '';
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    additionalTermsController = TextEditingController();
    addressTextFieldController = TextEditingController();
    listingPriceController = TextEditingController();
    totalCommissionController = TextEditingController();
    listingAgentCommissionController = TextEditingController();
    cooperatingBrokerCommissionController = TextEditingController();
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
    listingAgentCommissionController?.dispose();
    cooperatingBrokerCommissionController?.dispose();
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
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    child: FlutterFlowDropDown(
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
                                      alignment: WrapAlignment.start,
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
                                              SelectionArea(
                                                  child: Text(
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
                                              )),
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
                                              SelectionArea(
                                                  child: Text(
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
                                              )),
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
                                        return Stack(
                                          alignment:
                                              AlignmentDirectional(1, -1),
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Container(
                                                width: 40,
                                                height: 40,
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
                                                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                                                  ),
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
                                                'iconOnPageLoadAnimation']!),
                                          ],
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
                                            child: AllContactsWidget(),
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
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'totalCommissionController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
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
                                      suffixIcon: totalCommissionController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                totalCommissionController
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
                                    controller:
                                        listingAgentCommissionController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'listingAgentCommissionController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Listing Agent Commission ',
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
                                      suffixIcon:
                                          listingAgentCommissionController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    listingAgentCommissionController
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
                                            title: Text(
                                                'Listing Agent Commission '),
                                            content: Text(
                                                'Listing Agent Commission'),
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
                                    controller:
                                        cooperatingBrokerCommissionController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'cooperatingBrokerCommissionController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Co-op Broker Commission ',
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
                                      suffixIcon:
                                          cooperatingBrokerCommissionController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    cooperatingBrokerCommissionController
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
                                            title:
                                                Text('Co-op Broker Commission'),
                                            content:
                                                Text('Buyer Agent Commission'),
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
                                      color: Colors.black,
                                      size: 24,
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 12, 12),
                                                child: Text(
                                                  'Listing Docs',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (uploadedFileUrl1 != null &&
                                                    uploadedFileUrl1 != '')
                                                  Expanded(
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await launchURL(
                                                            uploadedFileUrl1);
                                                      },
                                                      child: SelectionArea(
                                                          child: AutoSizeText(
                                                        uploadedFileUrl1,
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
                                                      )),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 330,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: InkWell(
                                              onTap: () async {
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
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.cloud_upload,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayDark,
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 0, 0, 0),
                                                        child: Text(
                                                          'Click to Upload',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                                      width: 330,
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 12, 12),
                                                child: Text(
                                                  'AS-IS Contract & etc ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (uploadedFileUrl2 != null &&
                                                    uploadedFileUrl2 != '')
                                                  Expanded(
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await launchURL(
                                                            uploadedFileUrl1);
                                                      },
                                                      child: SelectionArea(
                                                          child: AutoSizeText(
                                                        uploadedFileUrl2,
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
                                                      )),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 330,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: InkWell(
                                                onTap: () async {
                                                  final selectedFile =
                                                      await selectFile(
                                                          allowedExtensions: [
                                                        'pdf'
                                                      ]);
                                                  if (selectedFile != null) {
                                                    setState(() =>
                                                        isMediaUploading2 =
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
                                                      isMediaUploading2 = false;
                                                    }
                                                    if (downloadUrl != null) {
                                                      setState(() =>
                                                          uploadedFileUrl2 =
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
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.cloud_upload,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .grayDark,
                                                          size: 24,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Click to Upload',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
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
                                      width: 330,
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 12, 12),
                                                child: Text(
                                                  'Upload Photo',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (uploadedFileUrl3 != null &&
                                              uploadedFileUrl3 != '')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await launchURL(
                                                            uploadedFileUrl1);
                                                      },
                                                      child: SelectionArea(
                                                          child: AutoSizeText(
                                                        uploadedFileUrl3,
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
                                                      )),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          Container(
                                            width: 330,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                final selectedFile =
                                                    await selectFile(
                                                        allowedExtensions: [
                                                      'pdf'
                                                    ]);
                                                if (selectedFile != null) {
                                                  setState(() =>
                                                      isMediaUploading3 = true);
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
                                                    isMediaUploading3 = false;
                                                  }
                                                  if (downloadUrl != null) {
                                                    setState(() =>
                                                        uploadedFileUrl3 =
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
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.cloud_upload,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayDark,
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 0, 0, 0),
                                                        child: Text(
                                                          'Click to Upload',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                                      width: 330,
                                      height: 180,
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
                                                    5, 5, 5, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Signature Pad ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 14,
                                                      ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    setState(() {
                                                      signatureController
                                                          .clear();
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
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: ClipRect(
                                              child: Signature(
                                                controller: signatureController,
                                                backgroundColor:
                                                    Color(0x80DBE2E7),
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
                              ],
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 5),
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
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryColor,
                                  ),
                                  child: Checkbox(
                                    value: checkboxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() => checkboxValue = newValue!);
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
                                      'I Agree to Terms & Conditions',
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
                      child: SelectionArea(
                          child: Text(
                        'Please select the current status of your transaction',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      )).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation']!),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
            child: FFButtonWidget(
              onPressed: () async {
                if (checkboxValue!) {
                  final signatureImage = await signatureController.toPngBytes();

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

                  apiResultmiv = await AirtableAPIsGroup
                      .createBothTransactionsRecordCall
                      .call(
                    address: addressTextFieldController!.text,
                    type: 'Seller',
                    listingPrice: double.parse(listingPriceController!.text),
                    status: statusDropDownValue,
                    typesOfFinancingAcceptedList: choiceChipsValues,
                    listDateActiveDate:
                        FFAppState().ListingDateActiveDate?.toString(),
                    listingExpirationDate:
                        FFAppState().ListingExpirationDate?.toString(),
                    listingDocs: uploadedFileUrl1,
                    aSISContractAndEtc: uploadedFileUrl2,
                    totalCommission:
                        double.parse(totalCommissionController!.text),
                    cooperatingBrokerCommission: double.parse(
                        cooperatingBrokerCommissionController!.text),
                    additionalTerms: additionalTermsController!.text,
                    notes: notesController!.text,
                    signature: uploadedSignatureUrl,
                  );
                  if ((apiResultmiv?.succeeded ?? true)) {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Success'),
                          content: Text('Successfully Submitted'),
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
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Failure'),
                          content: Text(getJsonField(
                            (apiResultmiv?.jsonBody ?? ''),
                            r'''$''',
                          ).toString()),
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
                            onPressed: () => Navigator.pop(alertDialogContext),
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
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 16,
                    ),
                elevation: 0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Text(
                'back',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
