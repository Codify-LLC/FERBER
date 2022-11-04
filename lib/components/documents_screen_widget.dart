import '../components/img_viewer_widget.dart';
import '../components/pdf_reader_widget.dart';
import '../components/property_image_slide_show_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsScreenWidget extends StatefulWidget {
  const DocumentsScreenWidget({
    Key? key,
    this.record,
  }) : super(key: key);

  final dynamic record;

  @override
  _DocumentsScreenWidgetState createState() => _DocumentsScreenWidgetState();
}

class _DocumentsScreenWidgetState extends State<DocumentsScreenWidget>
    with TickerProviderStateMixin {
  Map<dynamic, bool> checkboxListTileValueMap1 = {};
  List<dynamic> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<dynamic, bool> checkboxListTileValueMap2 = {};
  List<dynamic> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<dynamic, bool> checkboxListTileValueMap3 = {};
  List<dynamic> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<dynamic, bool> checkboxListTileValueMap4 = {};
  List<dynamic> get checkboxListTileCheckedItems4 =>
      checkboxListTileValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  Map<dynamic, bool> checkboxListTileValueMap5 = {};
  List<dynamic> get checkboxListTileCheckedItems5 =>
      checkboxListTileValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  bool? checkboxListTileValue6;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 700.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 700.ms,
          begin: Offset(0, 120),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional(1, -1),
      children: [
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (getJsonField(
                                    widget.record,
                                    r'''$.fields['⭐ AS-IS Contract & etc']''',
                                  ) !=
                                  null)
                                Builder(
                                  builder: (context) {
                                    final asIsContractAndEtc = getJsonField(
                                      widget.record,
                                      r'''$.fields['⭐ AS-IS Contract & etc']''',
                                    ).toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          asIsContractAndEtc.length,
                                          (asIsContractAndEtcIndex) {
                                        final asIsContractAndEtcItem =
                                            asIsContractAndEtc[
                                                asIsContractAndEtcIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 24, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              if (functions.toStringConverter(
                                                      getJsonField(
                                                    asIsContractAndEtcItem,
                                                    r'''$..type''',
                                                  )) ==
                                                  'application/pdf') {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: PdfReaderWidget(
                                                          pdfLink: functions
                                                              .stringFromList(
                                                                  (getJsonField(
                                                                    asIsContractAndEtcItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              } else {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: ImgViewerWidget(
                                                          imageURL: functions
                                                              .imagePathFromList(
                                                                  (getJsonField(
                                                                    asIsContractAndEtcItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor4,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              asIsContractAndEtcItem,
                                                              r'''$.type''',
                                                            )) ==
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .filePdf,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              asIsContractAndEtcItem,
                                                              r'''$.type''',
                                                            )) !=
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .fileImage,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 10,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        16,
                                                                        16),
                                                            child: Text(
                                                              getJsonField(
                                                                asIsContractAndEtcItem,
                                                                r'''$..filename''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Download',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Archive',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  width: 100,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    'Download',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  width: 100,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    'Archive',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Theme(
                                                          data: ThemeData(
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFF95A1AC),
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            value: checkboxListTileValueMap1[
                                                                    asIsContractAndEtcItem] ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxListTileValueMap1[
                                                                          asIsContractAndEtcItem] =
                                                                      newValue!);
                                                            },
                                                            tileColor: Color(
                                                                0xFFF5F5F5),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                            dense: false,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .trailing,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              if (getJsonField(
                                    widget.record,
                                    r'''$.fields['📂 Misc Docs']''',
                                  ) !=
                                  null)
                                Builder(
                                  builder: (context) {
                                    final urls = getJsonField(
                                      widget.record,
                                      r'''$.fields['📂 Misc Docs']''',
                                    ).toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(urls.length,
                                          (urlsIndex) {
                                        final urlsItem = urls[urlsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 24, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              if (functions.toStringConverter(
                                                      getJsonField(
                                                    urlsItem,
                                                    r'''$..type''',
                                                  )) ==
                                                  'application/pdf') {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: PdfReaderWidget(
                                                          pdfLink: functions
                                                              .stringFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              } else {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: ImgViewerWidget(
                                                          imageURL: functions
                                                              .imagePathFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor4,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) ==
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .filePdf,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) !=
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .fileImage,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 10,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      16,
                                                                      16,
                                                                      16),
                                                          child: Text(
                                                            getJsonField(
                                                              urlsItem,
                                                              r'''$..filename''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                'Download',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                              Text(
                                                                'Archive',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Download',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Archive',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Theme(
                                                          data: ThemeData(
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFF95A1AC),
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            value: checkboxListTileValueMap2[
                                                                    urlsItem] ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxListTileValueMap2[
                                                                          urlsItem] =
                                                                      newValue!);
                                                            },
                                                            tileColor: Color(
                                                                0xFFF5F5F5),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                            dense: false,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .trailing,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              if (getJsonField(
                                    widget.record,
                                    r'''$.fields['💲 Pre Approval or Proof of Funds (POF)']''',
                                  ) !=
                                  null)
                                Builder(
                                  builder: (context) {
                                    final urls = getJsonField(
                                      widget.record,
                                      r'''$.fields['💲 Pre Approval or Proof of Funds (POF)']''',
                                    ).toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(urls.length,
                                          (urlsIndex) {
                                        final urlsItem = urls[urlsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 24, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              if (functions.toStringConverter(
                                                      getJsonField(
                                                    urlsItem,
                                                    r'''$..type''',
                                                  )) ==
                                                  'application/pdf') {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: PdfReaderWidget(
                                                          pdfLink: functions
                                                              .stringFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              } else {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: ImgViewerWidget(
                                                          imageURL: functions
                                                              .imagePathFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor4,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) ==
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .filePdf,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) !=
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .fileImage,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 10,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      16,
                                                                      16,
                                                                      16),
                                                          child: Text(
                                                            getJsonField(
                                                              urlsItem,
                                                              r'''$..filename''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                'Download',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                              Text(
                                                                'Archive',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Download',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Archive',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Theme(
                                                          data: ThemeData(
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFF95A1AC),
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            value: checkboxListTileValueMap3[
                                                                    urlsItem] ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxListTileValueMap3[
                                                                          urlsItem] =
                                                                      newValue!);
                                                            },
                                                            tileColor: Color(
                                                                0xFFF5F5F5),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                            dense: false,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .trailing,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              if (getJsonField(
                                    widget.record,
                                    r'''$.fields['Brokerage']''',
                                  ) !=
                                  null)
                                Builder(
                                  builder: (context) {
                                    final urls = getJsonField(
                                      widget.record,
                                      r'''$.fields['Brokerage']''',
                                    ).toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(urls.length,
                                          (urlsIndex) {
                                        final urlsItem = urls[urlsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 24, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              if (functions.toStringConverter(
                                                      getJsonField(
                                                    urlsItem,
                                                    r'''$..type''',
                                                  )) ==
                                                  'application/pdf') {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: PdfReaderWidget(
                                                          pdfLink: functions
                                                              .stringFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              } else {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: ImgViewerWidget(
                                                          imageURL: functions
                                                              .imagePathFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor4,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) ==
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .filePdf,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) !=
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .fileImage,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 10,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      16,
                                                                      16,
                                                                      16),
                                                          child: Text(
                                                            getJsonField(
                                                              urlsItem,
                                                              r'''$..filename''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                'Download',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                              Text(
                                                                'Archive',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Download',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Archive',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Theme(
                                                          data: ThemeData(
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFF95A1AC),
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            value: checkboxListTileValueMap4[
                                                                    urlsItem] ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxListTileValueMap4[
                                                                          urlsItem] =
                                                                      newValue!);
                                                            },
                                                            tileColor: Color(
                                                                0xFFF5F5F5),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                            dense: false,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .trailing,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              if (getJsonField(
                                    widget.record,
                                    r'''$.fields[ '📃 Broker Synopsis']''',
                                  ) !=
                                  null)
                                Builder(
                                  builder: (context) {
                                    final urls = getJsonField(
                                      widget.record,
                                      r'''$.fields[ '📃 Broker Synopsis']''',
                                    ).toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(urls.length,
                                          (urlsIndex) {
                                        final urlsItem = urls[urlsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 24, 8),
                                          child: InkWell(
                                            onTap: () async {
                                              if (functions.toStringConverter(
                                                      getJsonField(
                                                    urlsItem,
                                                    r'''$..type''',
                                                  )) ==
                                                  'application/pdf') {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: PdfReaderWidget(
                                                          pdfLink: functions
                                                              .stringFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              } else {
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
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        child: ImgViewerWidget(
                                                          imageURL: functions
                                                              .imagePathFromList(
                                                                  (getJsonField(
                                                                    urlsItem,
                                                                    r'''$..url''',
                                                                  ) as List)
                                                                      .map<String>(
                                                                          (s) =>
                                                                              s.toString())
                                                                      .toList(),
                                                                  0),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor4,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) ==
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .filePdf,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        if (functions
                                                                .toStringConverter(
                                                                    getJsonField(
                                                              urlsItem,
                                                              r'''$.type''',
                                                            )) !=
                                                            'application/pdf')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .fileImage,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 10,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      16,
                                                                      16,
                                                                      16),
                                                          child: Text(
                                                            getJsonField(
                                                              urlsItem,
                                                              r'''$..filename''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                'Download',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                              Text(
                                                                'Archive',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          flex: 5,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Download',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 100,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  'Archive',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Theme(
                                                          data: ThemeData(
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xFF95A1AC),
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            value: checkboxListTileValueMap5[
                                                                    urlsItem] ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  checkboxListTileValueMap5[
                                                                          urlsItem] =
                                                                      newValue!);
                                                            },
                                                            tileColor: Color(
                                                                0xFFF5F5F5),
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                            dense: false,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .trailing,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 24, 8),
                                child: InkWell(
                                  onTap: () async {
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
                                            child: PropertyImageSlideShowWidget(
                                              record: widget.record,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 8, 8),
                                            child: FaIcon(
                                              FontAwesomeIcons.fileImage,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 10,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 16, 16, 16),
                                                child: Text(
                                                  'Property Images',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Expanded(
                                                flex: 5,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      'Download',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                    Text(
                                                      'Archive',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Expanded(
                                                flex: 5,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      width: 100,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Download',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 100,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        'Archive',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            Expanded(
                                              flex: 1,
                                              child: Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      Color(0xFF95A1AC),
                                                ),
                                                child: CheckboxListTile(
                                                  value:
                                                      checkboxListTileValue6 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        checkboxListTileValue6 =
                                                            newValue!);
                                                  },
                                                  tileColor: Color(0xFFF5F5F5),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                  dense: false,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  color: Color(0xFF1D2429),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x55000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Add Documents',
                        options: FFButtonOptions(
                          width: 160,
                          height: 50,
                          color: Color(0xFF1D2429),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Color(0xFF14181B),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Send Documents',
                          options: FFButtonOptions(
                            width: 160,
                            height: 50,
                            color: Color(0xFFD9180E),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                            elevation: 3,
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
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ],
          ),
        ),
        InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }
}
