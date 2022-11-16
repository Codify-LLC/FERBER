import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../components/buyer_and_seller_form_widget.dart';
import '../components/confirm_t_c_widget.dart';
import '../components/custom_auto_complete_widget.dart';
import '../components/events_widget.dart';
import '../components/home_calendar_widget.dart';
import '../components/people_widget.dart';
import '../components/property_details_widget.dart';
import '../components/services_widget.dart';
import '../components/statistics_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
    this.defaultPage,
  }) : super(key: key);

  final String? defaultPage;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  ApiCallResponse? apiResult;
  List<dynamic>? filteredRecordsSecond;
  TextEditingController? searchValurTextFieldAddressWebController;
  ApiCallResponse? bridgeAPIResultsWeb;
  List<dynamic>? filteredRecordsWeb;
  TextEditingController? searchValurTextFieldMLSWebController;
  String? dropDownSearchTypeWebValue;
  ApiCallResponse? apiResultcre;
  List<dynamic>? filteredRecords;
  TextEditingController? searchValurTextFieldMLSController;
  String? dropDownSearchTYpeValue;
  ApiCallResponse? bridgeAPIAddressResultsWeb;
  List<dynamic>? filteredRecordsSecondWeb;
  TextEditingController? searchValurTextFieldAddressController;
  String? choiceChipsValue;
  bool? switchListTileValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 2000.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 2000.ms,
          duration: 600.ms,
          begin: Offset(500, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 0.ms,
          begin: Offset(200, -500),
          end: Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 0.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (animationsMap['containerOnActionTriggerAnimation'] != null) {
        setState(() => hasContainerTriggered = true);
        SchedulerBinding.instance.addPostFrameCallback((_) async =>
            animationsMap['containerOnActionTriggerAnimation']!
                .controller
                .forward()
                .whenComplete(
                    animationsMap['containerOnActionTriggerAnimation']!
                        .controller
                        .reverse));
      }
    });

    searchValurTextFieldAddressController = TextEditingController();
    searchValurTextFieldMLSController = TextEditingController();
    searchValurTextFieldAddressWebController = TextEditingController();
    searchValurTextFieldMLSWebController = TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    searchValurTextFieldAddressController?.dispose();
    searchValurTextFieldMLSController?.dispose();
    searchValurTextFieldAddressWebController?.dispose();
    searchValurTextFieldMLSWebController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Home',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Material(
                        color: Colors.transparent,
                        elevation: 5,
                        child: ClipRRect(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 2, 12, 2),
                                    child: Image.asset(
                                      'assets/images/ft_logo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Home',
                                        icon: Icon(
                                          Icons.home,
                                          size: 14,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Colors.transparent,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      if (isWeb
                                          ? ((FFAppState()
                                                      .currentSelectedDashboardPage !=
                                                  'Events') &&
                                              (FFAppState()
                                                      .currentSelectedDashboardPage !=
                                                  'Statistics') &&
                                              (FFAppState()
                                                      .currentSelectedDashboardPage !=
                                                  'People'))
                                          : ((choiceChipsValue != 'Events') &&
                                              (choiceChipsValue !=
                                                  'Statistics') &&
                                              (choiceChipsValue != 'People')))
                                        Divider(
                                          height: 2,
                                          thickness: 1,
                                          indent: 2,
                                          endIndent: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                        ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'People',
                                        icon: Icon(
                                          Icons.people,
                                          size: 18,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Colors.transparent,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      if (FFAppState()
                                              .currentSelectedDashboardPage ==
                                          'Home')
                                        Divider(
                                          height: 2,
                                          thickness: 1,
                                          indent: 2,
                                          endIndent: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                        ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Events',
                                        icon: Icon(
                                          Icons.event,
                                          size: 18,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Colors.transparent,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      if (FFAppState()
                                              .currentSelectedDashboardPage ==
                                          'Home')
                                        Divider(
                                          height: 2,
                                          thickness: 1,
                                          indent: 2,
                                          endIndent: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                        ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Statistics',
                                        icon: Icon(
                                          Icons.insert_chart,
                                          size: 18,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40,
                                          color: Colors.transparent,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      if (FFAppState()
                                              .currentSelectedDashboardPage ==
                                          'Home')
                                        Divider(
                                          height: 2,
                                          thickness: 1,
                                          indent: 2,
                                          endIndent: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                        ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Inbox',
                                        icon: Icon(
                                          Icons.inbox,
                                          size: 14,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Colors.transparent,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      if (FFAppState()
                                              .currentSelectedDashboardPage ==
                                          'Home')
                                        Divider(
                                          height: 2,
                                          thickness: 1,
                                          indent: 2,
                                          endIndent: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                        ),
                                    ],
                                  ),
                                ),
                                Spacer(flex: 4),
                                Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(),
                                  child: SwitchListTile(
                                    value: switchListTileValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          switchListTileValue = newValue!);
                                    },
                                    title: Text(
                                      'Switch to TC',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Requires certification',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lato',
                                            fontSize: 10,
                                          ),
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    activeColor: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    dense: true,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 24, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      if (animationsMap[
                                              'containerOnActionTriggerAnimation'] !=
                                          null) {
                                        setState(
                                            () => hasContainerTriggered = true);
                                        SchedulerBinding.instance
                                            .addPostFrameCallback((_) async =>
                                                animationsMap[
                                                        'containerOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0));
                                      }
                                    },
                                    child: Icon(
                                      Icons.menu,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        child: Stack(
                          children: [
                            if (isWeb
                                ? ((FFAppState().currentSelectedDashboardPage !=
                                        'Events') &&
                                    (FFAppState()
                                            .currentSelectedDashboardPage !=
                                        'Statistics') &&
                                    (FFAppState()
                                            .currentSelectedDashboardPage !=
                                        'People'))
                                : ((choiceChipsValue != 'Events') &&
                                    (choiceChipsValue != 'Statistics') &&
                                    (choiceChipsValue != 'People')))
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: AirtableAPIsGroup
                                            .listTransactionsRecordsCall
                                            .call(
                                          sortField: 'Last Modified',
                                          sortDirection: 'desc',
                                          filterByFormula:
                                              'SEARCH(\'${searchValurTextFieldAddressController!.text}\', {🏡 Address})',
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
                                          final formMainListTransactionsRecordsResponse =
                                              snapshot.data!;
                                          return Container(
                                            width: double.infinity,
                                            child: Form(
                                              key: formKey,
                                              autovalidateMode:
                                                  AutovalidateMode.disabled,
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 1),
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                      child:
                                                          custom_widgets.Fmap4(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            1,
                                                        coordinates: functions
                                                            .dataToLatLang(
                                                                (AirtableAPIsGroup
                                                                        .listTransactionsRecordsCall
                                                                        .latitude(
                                                                  formMainListTransactionsRecordsResponse
                                                                      .jsonBody,
                                                                ) as List)
                                                                    .map<String>(
                                                                        (s) => s
                                                                            .toString())
                                                                    .toList(),
                                                                (AirtableAPIsGroup
                                                                        .listTransactionsRecordsCall
                                                                        .longitude(
                                                                  formMainListTransactionsRecordsResponse
                                                                      .jsonBody,
                                                                ) as List)
                                                                    .map<String>(
                                                                        (s) => s
                                                                            .toString())
                                                                    .toList())
                                                            .toList(),
                                                        recordItem:
                                                            AirtableAPIsGroup
                                                                .listTransactionsRecordsCall
                                                                .recordList(
                                                                  formMainListTransactionsRecordsResponse
                                                                      .jsonBody,
                                                                )
                                                                .toList(),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, -1),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      Color(
                                                                          0x00FFFFFF)
                                                                    ],
                                                                    stops: [
                                                                      0,
                                                                      1
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            -1),
                                                                    end:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            1),
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              16,
                                                                              16,
                                                                              16,
                                                                              16),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.stretch,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2,
                                                                                20,
                                                                                2,
                                                                                0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    await showModalBottomSheet(
                                                                                      isScrollControlled: true,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      barrierColor: Colors.transparent,
                                                                                      context: context,
                                                                                      builder: (context) {
                                                                                        return Padding(
                                                                                          padding: MediaQuery.of(context).viewInsets,
                                                                                          child: Container(
                                                                                            height: MediaQuery.of(context).size.height * 1,
                                                                                            child: BuyerAndSellerFormWidget(),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => setState(() {}));
                                                                                  },
                                                                                  child: Text(
                                                                                    'Hello ',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Nunito',
                                                                                          fontSize: 28,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: AuthUserStreamWidget(
                                                                                    child: InkWell(
                                                                                      onTap: () async {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return Padding(
                                                                                              padding: MediaQuery.of(context).viewInsets,
                                                                                              child: ConfirmTCWidget(),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                      child: Text(
                                                                                        currentUserDisplayName,
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: 'Nunito',
                                                                                              color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                              fontSize: 26,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2,
                                                                                0,
                                                                                2,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              '{\$Total Commission YTD]',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Nunito',
                                                                                    fontSize: 16,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12,
                                                                                0,
                                                                                12,
                                                                                0),
                                                                            child:
                                                                                Material(
                                                                              color: Colors.transparent,
                                                                              elevation: 0,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(8),
                                                                              ),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8),
                                                                                child: Container(
                                                                                  width: MediaQuery.of(context).size.width * 0.95,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                    border: Border.all(
                                                                                      color: Color(0xFFF1F4F8),
                                                                                      width: 2,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        FlutterFlowDropDown(
                                                                                          initialOption: dropDownSearchTYpeValue ??= 'MLS ID',
                                                                                          options: [
                                                                                            'Address',
                                                                                            'MLS ID',
                                                                                            'Agent'
                                                                                          ],
                                                                                          onChanged: (val) => setState(() => dropDownSearchTYpeValue = val),
                                                                                          width: 90,
                                                                                          height: 50,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Nunito',
                                                                                                color: Colors.black,
                                                                                                fontSize: 13,
                                                                                                fontWeight: FontWeight.bold,
                                                                                              ),
                                                                                          hintText: 'Select',
                                                                                          fillColor: Colors.white,
                                                                                          elevation: 2,
                                                                                          borderColor: Colors.transparent,
                                                                                          borderWidth: 0,
                                                                                          borderRadius: 0,
                                                                                          margin: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                                                          hidesUnderline: true,
                                                                                        ),
                                                                                        if (dropDownSearchTYpeValue == 'MLS ID')
                                                                                          Expanded(
                                                                                            child: TextFormField(
                                                                                              controller: searchValurTextFieldMLSController,
                                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                                'searchValurTextFieldMLSController',
                                                                                                Duration(milliseconds: 0),
                                                                                                () async {
                                                                                                  apiResultcre = await SearchByMLSorSTREETCall.call(
                                                                                                    listingId: searchValurTextFieldMLSController!.text,
                                                                                                  );
                                                                                                  if ((apiResultcre?.succeeded ?? true)) {
                                                                                                    filteredRecords = await actions.searchRecordsData(
                                                                                                      searchValurTextFieldMLSController!.text,
                                                                                                      AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                          .recordList(
                                                                                                            formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                          )
                                                                                                          .toList(),
                                                                                                    );
                                                                                                  }

                                                                                                  setState(() {});
                                                                                                },
                                                                                              ),
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                hintText: 'Search',
                                                                                                enabledBorder: InputBorder.none,
                                                                                                focusedBorder: InputBorder.none,
                                                                                                errorBorder: InputBorder.none,
                                                                                                focusedErrorBorder: InputBorder.none,
                                                                                                suffixIcon: searchValurTextFieldMLSController!.text.isNotEmpty
                                                                                                    ? InkWell(
                                                                                                        onTap: () async {
                                                                                                          searchValurTextFieldMLSController?.clear();
                                                                                                          apiResultcre = await SearchByMLSorSTREETCall.call(
                                                                                                            listingId: searchValurTextFieldMLSController!.text,
                                                                                                          );
                                                                                                          if ((apiResultcre?.succeeded ?? true)) {
                                                                                                            filteredRecords = await actions.searchRecordsData(
                                                                                                              searchValurTextFieldMLSController!.text,
                                                                                                              AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                                  .recordList(
                                                                                                                    formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                                  )
                                                                                                                  .toList(),
                                                                                                            );
                                                                                                          }

                                                                                                          setState(() {});
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
                                                                                              style: FlutterFlowTheme.of(context).bodyText1,
                                                                                            ),
                                                                                          ),
                                                                                        if (dropDownSearchTYpeValue == 'Address')
                                                                                          Expanded(
                                                                                            child: TextFormField(
                                                                                              controller: searchValurTextFieldAddressController,
                                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                                'searchValurTextFieldAddressController',
                                                                                                Duration(milliseconds: 0),
                                                                                                () async {
                                                                                                  bridgeAPIAddressResultsWeb = await SearchByMLSorSTREETCall.call(
                                                                                                    unparsedAddress: searchValurTextFieldAddressController!.text,
                                                                                                  );
                                                                                                  if ((bridgeAPIAddressResultsWeb?.succeeded ?? true)) {
                                                                                                    filteredRecordsSecondWeb = await actions.searchRecordsData(
                                                                                                      searchValurTextFieldAddressController!.text,
                                                                                                      AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                          .recordList(
                                                                                                            formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                          )
                                                                                                          .toList(),
                                                                                                    );
                                                                                                  }

                                                                                                  setState(() {});
                                                                                                },
                                                                                              ),
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                hintText: 'Search',
                                                                                                enabledBorder: InputBorder.none,
                                                                                                focusedBorder: InputBorder.none,
                                                                                                errorBorder: InputBorder.none,
                                                                                                focusedErrorBorder: InputBorder.none,
                                                                                                suffixIcon: searchValurTextFieldAddressController!.text.isNotEmpty
                                                                                                    ? InkWell(
                                                                                                        onTap: () async {
                                                                                                          searchValurTextFieldAddressController?.clear();
                                                                                                          bridgeAPIAddressResultsWeb = await SearchByMLSorSTREETCall.call(
                                                                                                            unparsedAddress: searchValurTextFieldAddressController!.text,
                                                                                                          );
                                                                                                          if ((bridgeAPIAddressResultsWeb?.succeeded ?? true)) {
                                                                                                            filteredRecordsSecondWeb = await actions.searchRecordsData(
                                                                                                              searchValurTextFieldAddressController!.text,
                                                                                                              AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                                  .recordList(
                                                                                                                    formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                                  )
                                                                                                                  .toList(),
                                                                                                            );
                                                                                                          }

                                                                                                          setState(() {});
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
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Nunito',
                                                                                                    fontSize: 18,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              16,
                                                                              0,
                                                                              16,
                                                                              0),
                                                                      child:
                                                                          Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            5,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(12),
                                                                            bottomRight:
                                                                                Radius.circular(12),
                                                                            topLeft:
                                                                                Radius.circular(0),
                                                                            topRight:
                                                                                Radius.circular(0),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(12),
                                                                            bottomRight:
                                                                                Radius.circular(12),
                                                                            topLeft:
                                                                                Radius.circular(0),
                                                                            topRight:
                                                                                Radius.circular(0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxHeight: MediaQuery.of(context).size.height * 0.3,
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Colors.transparent,
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(12),
                                                                                bottomRight: Radius.circular(12),
                                                                                topLeft: Radius.circular(0),
                                                                                topRight: Radius.circular(0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Visibility(
                                                                              visible: (searchValurTextFieldMLSController!.text != null && searchValurTextFieldMLSController!.text != '') || (searchValurTextFieldAddressController!.text != null && searchValurTextFieldAddressController!.text != ''),
                                                                              child: CustomAutoCompleteWidget(
                                                                                searchText: searchValurTextFieldMLSController!.text,
                                                                                mls: dropDownSearchTYpeValue == 'MLS ID',
                                                                                address: dropDownSearchTYpeValue == 'Address',
                                                                              ),
                                                                            ),
                                                                          ),
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
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                    ))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      12,
                                                                      12,
                                                                      12),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              child: Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    1,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: 400,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              8),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.stretch,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    InkWell(
                                                                                      onTap: () async {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          barrierColor: Colors.transparent,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return Padding(
                                                                                              padding: MediaQuery.of(context).viewInsets,
                                                                                              child: Container(
                                                                                                height: MediaQuery.of(context).size.height * 1,
                                                                                                child: BuyerAndSellerFormWidget(),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                      child: Text(
                                                                                        'Hello, ',
                                                                                        style: FlutterFlowTheme.of(context).title2,
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: AuthUserStreamWidget(
                                                                                        child: InkWell(
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return Padding(
                                                                                                  padding: MediaQuery.of(context).viewInsets,
                                                                                                  child: ConfirmTCWidget(),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => setState(() {}));
                                                                                          },
                                                                                          child: Text(
                                                                                            currentUserDisplayName,
                                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                                  fontFamily: 'Nunito',
                                                                                                  color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                                                                                child: Text(
                                                                                  '{\$Total Commission YTD]',
                                                                                  style: FlutterFlowTheme.of(context).bodyText1,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              0,
                                                                              9,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Material(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 0,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                    child: Container(
                                                                                      width: MediaQuery.of(context).size.width * 0.95,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFFF1F4F8),
                                                                                          width: 2,
                                                                                        ),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          FlutterFlowDropDown(
                                                                                            initialOption: dropDownSearchTypeWebValue ??= 'MLS ID',
                                                                                            options: [
                                                                                              'Address',
                                                                                              'MLS ID',
                                                                                              'Agent'
                                                                                            ],
                                                                                            onChanged: (val) => setState(() => dropDownSearchTypeWebValue = val),
                                                                                            width: 90,
                                                                                            height: 50,
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Nunito',
                                                                                                  color: Colors.black,
                                                                                                  fontSize: 13,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                            hintText: 'Select',
                                                                                            fillColor: Colors.white,
                                                                                            elevation: 2,
                                                                                            borderColor: Colors.transparent,
                                                                                            borderWidth: 0,
                                                                                            borderRadius: 0,
                                                                                            margin: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                                                            hidesUnderline: true,
                                                                                          ),
                                                                                          if (dropDownSearchTypeWebValue == 'MLS ID')
                                                                                            Expanded(
                                                                                              child: TextFormField(
                                                                                                controller: searchValurTextFieldMLSWebController,
                                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                                  'searchValurTextFieldMLSWebController',
                                                                                                  Duration(milliseconds: 0),
                                                                                                  () async {
                                                                                                    bridgeAPIResultsWeb = await SearchByMLSorSTREETCall.call(
                                                                                                      listingId: searchValurTextFieldMLSWebController!.text,
                                                                                                    );
                                                                                                    if ((bridgeAPIResultsWeb?.succeeded ?? true)) {
                                                                                                      filteredRecordsWeb = await actions.searchRecordsData(
                                                                                                        searchValurTextFieldMLSWebController!.text,
                                                                                                        AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                            .recordList(
                                                                                                              formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                            )
                                                                                                            .toList(),
                                                                                                      );
                                                                                                    }

                                                                                                    setState(() {});
                                                                                                  },
                                                                                                ),
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  hintText: 'Search',
                                                                                                  enabledBorder: InputBorder.none,
                                                                                                  focusedBorder: InputBorder.none,
                                                                                                  errorBorder: InputBorder.none,
                                                                                                  focusedErrorBorder: InputBorder.none,
                                                                                                  suffixIcon: searchValurTextFieldMLSWebController!.text.isNotEmpty
                                                                                                      ? InkWell(
                                                                                                          onTap: () async {
                                                                                                            searchValurTextFieldMLSWebController?.clear();
                                                                                                            bridgeAPIResultsWeb = await SearchByMLSorSTREETCall.call(
                                                                                                              listingId: searchValurTextFieldMLSWebController!.text,
                                                                                                            );
                                                                                                            if ((bridgeAPIResultsWeb?.succeeded ?? true)) {
                                                                                                              filteredRecordsWeb = await actions.searchRecordsData(
                                                                                                                searchValurTextFieldMLSWebController!.text,
                                                                                                                AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                                    .recordList(
                                                                                                                      formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                                    )
                                                                                                                    .toList(),
                                                                                                              );
                                                                                                            }

                                                                                                            setState(() {});
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
                                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                                              ),
                                                                                            ),
                                                                                          if (dropDownSearchTypeWebValue == 'Address')
                                                                                            Expanded(
                                                                                              child: TextFormField(
                                                                                                controller: searchValurTextFieldAddressWebController,
                                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                                  'searchValurTextFieldAddressWebController',
                                                                                                  Duration(milliseconds: 0),
                                                                                                  () async {
                                                                                                    apiResult = await SearchByMLSorSTREETCall.call(
                                                                                                      unparsedAddress: searchValurTextFieldAddressWebController!.text,
                                                                                                    );
                                                                                                    if ((apiResult?.succeeded ?? true)) {
                                                                                                      filteredRecordsSecond = await actions.searchRecordsData(
                                                                                                        searchValurTextFieldAddressWebController!.text,
                                                                                                        AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                            .recordList(
                                                                                                              formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                            )
                                                                                                            .toList(),
                                                                                                      );
                                                                                                    }

                                                                                                    setState(() {});
                                                                                                  },
                                                                                                ),
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  hintText: 'Search',
                                                                                                  enabledBorder: InputBorder.none,
                                                                                                  focusedBorder: InputBorder.none,
                                                                                                  errorBorder: InputBorder.none,
                                                                                                  focusedErrorBorder: InputBorder.none,
                                                                                                  suffixIcon: searchValurTextFieldAddressWebController!.text.isNotEmpty
                                                                                                      ? InkWell(
                                                                                                          onTap: () async {
                                                                                                            searchValurTextFieldAddressWebController?.clear();
                                                                                                            apiResult = await SearchByMLSorSTREETCall.call(
                                                                                                              unparsedAddress: searchValurTextFieldAddressWebController!.text,
                                                                                                            );
                                                                                                            if ((apiResult?.succeeded ?? true)) {
                                                                                                              filteredRecordsSecond = await actions.searchRecordsData(
                                                                                                                searchValurTextFieldAddressWebController!.text,
                                                                                                                AirtableAPIsGroup.listTransactionsRecordsCall
                                                                                                                    .recordList(
                                                                                                                      formMainListTransactionsRecordsResponse.jsonBody,
                                                                                                                    )
                                                                                                                    .toList(),
                                                                                                              );
                                                                                                            }

                                                                                                            setState(() {});
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
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Nunito',
                                                                                                      fontSize: 18,
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
                                                                        ),
                                                                        if ((searchValurTextFieldMLSWebController!.text != null && searchValurTextFieldMLSWebController!.text != '') ||
                                                                            (searchValurTextFieldAddressWebController!.text != null &&
                                                                                searchValurTextFieldAddressWebController!.text != ''))
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                              child: CustomAutoCompleteWidget(
                                                                                searchText: searchValurTextFieldMLSWebController!.text,
                                                                                mls: dropDownSearchTypeWebValue == 'MLS ID',
                                                                                address: dropDownSearchTypeWebValue == 'Address',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                    if (FFAppState()
                                                                            .panelDisplay ==
                                                                        'Form')
                                                                      BuyerAndSellerFormWidget(
                                                                        prefillAddress:
                                                                            '',
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 395,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                              ),
                                                            Expanded(
                                                              child: ClipRRect(
                                                                child:
                                                                    Container(
                                                                  height: 200,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxHeight: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.25,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Visibility(
                                                                    visible:
                                                                        getJsonField(
                                                                              formMainListTransactionsRecordsResponse.jsonBody,
                                                                              r'''$.records''',
                                                                            ) !=
                                                                            null,
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final record = AirtableAPIsGroup
                                                                            .listTransactionsRecordsCall
                                                                            .recordList(
                                                                              formMainListTransactionsRecordsResponse.jsonBody,
                                                                            )
                                                                            .toList();
                                                                        return ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.horizontal,
                                                                          itemCount:
                                                                              record.length,
                                                                          itemBuilder:
                                                                              (context, recordIndex) {
                                                                            final recordItem =
                                                                                record[recordIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                              child: InkWell(
                                                                                onTap: () async {
                                                                                  setState(() => FFAppState().currentDisplayRecordID = getJsonField(
                                                                                        recordItem,
                                                                                        r'''$.id''',
                                                                                      ).toString());
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return Padding(
                                                                                        padding: MediaQuery.of(context).viewInsets,
                                                                                        child: PropertyDetailsWidget(
                                                                                          recordId: FFAppState().currentDisplayRecordID,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
                                                                                child: Material(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    child: Container(
                                                                                      width: MediaQuery.of(context).size.width,
                                                                                      constraints: BoxConstraints(
                                                                                        maxWidth: 350,
                                                                                        maxHeight: 110,
                                                                                      ),
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Hero(
                                                                                              tag: valueOrDefault<String>(
                                                                                                getJsonField(
                                                                                                  recordItem,
                                                                                                  r'''$.fields['Property Image'][0].url''' + '$recordIndex',
                                                                                                ),
                                                                                                'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
                                                                                              ),
                                                                                              transitionOnUserGestures: true,
                                                                                              child: Image.network(
                                                                                                valueOrDefault<String>(
                                                                                                  getJsonField(
                                                                                                    recordItem,
                                                                                                    r'''$.fields['Property Image'][0].url''',
                                                                                                  ),
                                                                                                  'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
                                                                                                ),
                                                                                                width: MediaQuery.of(context).size.width * 0.45,
                                                                                                height: MediaQuery.of(context).size.height * 1,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: MediaQuery.of(context).size.width * 0.4,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    if (getJsonField(
                                                                                                          recordItem,
                                                                                                          r'''$.fields['🏡 Address']''',
                                                                                                        ) !=
                                                                                                        null)
                                                                                                      Expanded(
                                                                                                        flex: 3,
                                                                                                        child: AutoSizeText(
                                                                                                          getJsonField(
                                                                                                            recordItem,
                                                                                                            r'''$.fields['🏡 Address']''',
                                                                                                          ).toString(),
                                                                                                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                                fontSize: 14,
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    Expanded(
                                                                                                      child: AutoSizeText(
                                                                                                        functions.toStringConverter(getJsonField(
                                                                                                          recordItem,
                                                                                                          r'''$.fields['⚡❗Status']''',
                                                                                                        )),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Nunito',
                                                                                                              color: valueOrDefault<Color>(
                                                                                                                () {
                                                                                                                  if (functions.toStringConverter(getJsonField(
                                                                                                                        recordItem,
                                                                                                                        r'''$.fields['⚡❗Status']''',
                                                                                                                      )) ==
                                                                                                                      'Active') {
                                                                                                                    return Color(0xFF2CFF00);
                                                                                                                  } else if (functions.toStringConverter(getJsonField(
                                                                                                                        recordItem,
                                                                                                                        r'''$.fields['⚡❗Status']''',
                                                                                                                      )) ==
                                                                                                                      'Closed') {
                                                                                                                    return Color(0xFFFF0B00);
                                                                                                                  } else if (functions.toStringConverter(getJsonField(
                                                                                                                        recordItem,
                                                                                                                        r'''$.fields['⚡❗Status']''',
                                                                                                                      )) ==
                                                                                                                      'Executed Contract ') {
                                                                                                                    return Color(0xFF007BFF);
                                                                                                                  } else if (functions.toStringConverter(getJsonField(
                                                                                                                        recordItem,
                                                                                                                        r'''$.fields['⚡❗Status']''',
                                                                                                                      )) ==
                                                                                                                      'Pending') {
                                                                                                                    return Color(0xFFFFB100);
                                                                                                                  } else {
                                                                                                                    return FlutterFlowTheme.of(context).primaryColor;
                                                                                                                  }
                                                                                                                }(),
                                                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                                                              ),
                                                                                                              fontSize: 12,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 4, 4),
                                                                                                      child: Container(
                                                                                                        width: 30,
                                                                                                        height: 30,
                                                                                                        clipBehavior: Clip.antiAlias,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                        ),
                                                                                                        child: Image.network(
                                                                                                          valueOrDefault<String>(
                                                                                                            getJsonField(
                                                                                                              recordItem,
                                                                                                              r'''$.fields['🤵 Agent Image Test1'][0].url''',
                                                                                                            ),
                                                                                                            'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-default-avatar-profile-icon-vector-social-media-user-image-vector-illustration-227787227.jpg',
                                                                                                          ),
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    if (getJsonField(
                                                                                                          recordItem,
                                                                                                          r'''$.fields['💵 Purchase Price']''',
                                                                                                        ) !=
                                                                                                        null)
                                                                                                      Expanded(
                                                                                                        child: Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            formatNumber(
                                                                                                              functions.stringToDouble(getJsonField(
                                                                                                                recordItem,
                                                                                                                r'''$.fields['💵 Purchase Price']''',
                                                                                                              ).toString()),
                                                                                                              formatType: FormatType.decimal,
                                                                                                              decimalType: DecimalType.automatic,
                                                                                                              currency: '\$',
                                                                                                            ),
                                                                                                            '\$0',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Poppins',
                                                                                                                fontSize: 12,
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    Card(
                                                                                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(4),
                                                                                                      ),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 2, 8, 2),
                                                                                                        child: Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            '👪 ${valueOrDefault<String>(
                                                                                                              getJsonField(
                                                                                                                recordItem,
                                                                                                                r'''$.fields['👪 Type']''',
                                                                                                              ).toString(),
                                                                                                              'Not Set',
                                                                                                            )}',
                                                                                                            'Not Set',
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                fontFamily: 'Lato',
                                                                                                                color: Colors.white,
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
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.15,
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 70,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if ((isWeb
                                            ? (FFAppState()
                                                    .currentSelectedDashboardPage ==
                                                'Statistics')
                                            : (choiceChipsValue ==
                                                'Statistics')) ||
                                        (isWeb
                                            ? (FFAppState()
                                                    .currentSelectedDashboardPage ==
                                                'Events')
                                            : (choiceChipsValue == 'Events')) ||
                                        (isWeb
                                            ? (FFAppState()
                                                    .currentSelectedDashboardPage ==
                                                'People')
                                            : (choiceChipsValue == 'People')))
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            if (isWeb
                                                ? (FFAppState()
                                                        .currentSelectedDashboardPage ==
                                                    'Statistics')
                                                : (choiceChipsValue ==
                                                    'Statistics'))
                                              Expanded(
                                                child: StatisticsWidget(),
                                              ),
                                            if (isWeb
                                                ? (FFAppState()
                                                        .currentSelectedDashboardPage ==
                                                    'Events')
                                                : (choiceChipsValue ==
                                                    'Events'))
                                              Expanded(
                                                child: EventsWidget(),
                                              ),
                                            if (isWeb
                                                ? (FFAppState()
                                                        .currentSelectedDashboardPage ==
                                                    'People')
                                                : (choiceChipsValue ==
                                                    'People'))
                                              Expanded(
                                                child: PeopleWidget(),
                                              ),
                                          ],
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      Material(
                                        color: Colors.transparent,
                                        elevation: 5,
                                        child: ClipRRect(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 70,
                                            constraints: BoxConstraints(
                                              maxHeight: 70,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 0, 8, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child:
                                                        FlutterFlowChoiceChips(
                                                      initiallySelected: [
                                                        valueOrDefault<String>(
                                                          widget.defaultPage,
                                                          'Home',
                                                        )
                                                      ],
                                                      options: [
                                                        ChipData('Home',
                                                            Icons.home_sharp),
                                                        ChipData('People',
                                                            Icons.people),
                                                        ChipData(
                                                            'Events',
                                                            Icons
                                                                .event_available),
                                                        ChipData('Statistics',
                                                            Icons.bar_chart),
                                                        ChipData('Inbox',
                                                            Icons.inbox)
                                                      ],
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              choiceChipsValue =
                                                                  val?.first),
                                                      selectedChipStyle:
                                                          ChipStyle(
                                                        backgroundColor:
                                                            Colors.white,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 1,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                        iconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                        iconSize: 25,
                                                        elevation: 0,
                                                      ),
                                                      unselectedChipStyle:
                                                          ChipStyle(
                                                        backgroundColor:
                                                            Colors.white,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 1,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                ),
                                                        iconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconGray,
                                                        iconSize: 25,
                                                        elevation: 0,
                                                      ),
                                                      chipSpacing: 20,
                                                      multiselect: false,
                                                      initialized:
                                                          choiceChipsValue !=
                                                              null,
                                                      alignment: WrapAlignment
                                                          .spaceBetween,
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
                            if ((isWeb
                                    ? (FFAppState()
                                            .currentSelectedDashboardPage ==
                                        'Home')
                                    : (choiceChipsValue == 'Home')) &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(0),
                                    ),
                                    child: Container(
                                      width: 50,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(0),
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(0),
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            barrierColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: HomeCalendarWidget(),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(1, -1),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        constraints: BoxConstraints(
                          maxWidth: 300,
                          maxHeight: 450,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Container(
                                width: 50,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Main Menu',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF090F13),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (animationsMap[
                                              'containerOnActionTriggerAnimation'] !=
                                          null) {
                                        setState(
                                            () => hasContainerTriggered = true);
                                        SchedulerBinding.instance.addPostFrameCallback(
                                            (_) async => animationsMap[
                                                    'containerOnActionTriggerAnimation']!
                                                .controller
                                                .forward()
                                                .whenComplete(animationsMap[
                                                        'containerOnActionTriggerAnimation']!
                                                    .controller
                                                    .reverse));
                                      }
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        if (isWeb) {
                                          setState(() => FFAppState()
                                              .panelDisplay = 'Form');
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation'] !=
                                              null) {
                                            setState(() =>
                                                hasContainerTriggered = true);
                                            SchedulerBinding.instance.addPostFrameCallback(
                                                (_) async => animationsMap[
                                                        'containerOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward()
                                                    .whenComplete(animationsMap[
                                                            'containerOnActionTriggerAnimation']!
                                                        .controller
                                                        .reverse));
                                          }
                                        } else {
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
                                                      0.75,
                                                  child:
                                                      BuyerAndSellerFormWidget(
                                                    prefillAddress: '',
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        }
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 12, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Start a Transaction',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          barrierColor: Colors.transparent,
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
                                                child:
                                                    BuyerAndSellerFormWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 12, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Add Addendum',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
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
                                              child: ServicesWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 12, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Add Services',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
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
                                              child: ServicesWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 12, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Add Teammate',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('Home');
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 12, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Chat',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
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
                                              child: ServicesWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 12, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Settings',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                        ),
                      ),
                    ),
                  ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation']!,
                      hasBeenTriggered: hasContainerTriggered),
                ),
              ],
            ),
          ),
        ));
  }
}
