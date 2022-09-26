import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/all_property_listing_widget.dart';
import '../components/search_results_widget.dart';
import '../flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  LatLng? currentUserLocationValue;
  final formKey = GlobalKey<FormState>();
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  List<String> simpleSearchResults = [];
  final searchValurTextFieldAddressKey = GlobalKey();
  TextEditingController? searchValurTextFieldAddressController;
  String? searchValurTextFieldAddressSelectedOption;
  String? dropDownSearchTYpeValue;
  final searchValurTextFieldMLSKey = GlobalKey();
  TextEditingController? searchValurTextFieldMLSController;
  String? searchValurTextFieldMLSSelectedOption;
  PageController? pageViewController;

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    searchValurTextFieldAddressController = TextEditingController();
    searchValurTextFieldMLSController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    searchValurTextFieldAddressController?.dispose();
    searchValurTextFieldMLSController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: SpinKitChasingDots(
            color: Color(0xFFD9180E),
            size: 0,
          ),
        ),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'SellerIntakeStep1',
                            queryParams: {
                              'participantsID': serializeParam(
                                  random_data.randomInteger(65466, 65466),
                                  ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Text(
                          'Hello ',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      AuthUserStreamWidget(
                        child: Text(
                          currentUserDisplayName,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Nunito',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '{\$2,550,000]',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Nunito',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.01,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: GetTransactionsCall.call(
                maxRecords: 100,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitChasingDots(
                        color: Color(0xFFD9180E),
                        size: 0,
                      ),
                    ),
                  );
                }
                final formMainGetTransactionsResponse = snapshot.data!;
                return Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Stack(
                      alignment: AlignmentDirectional(0, 1),
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          FlutterFlowGoogleMap(
                            controller: googleMapsController,
                            onCameraIdle: (latLng) => googleMapsCenter = latLng,
                            initialLocation: googleMapsCenter ??=
                                currentUserLocationValue!,
                            markerColor: GoogleMarkerColor.violet,
                            mapType: MapType.normal,
                            style: GoogleMapStyle.standard,
                            initialZoom: 14,
                            allowInteraction: false,
                            allowZoom: true,
                            showZoomControls: true,
                            showLocation: false,
                            showCompass: false,
                            showMapToolbar: false,
                            showTraffic: false,
                            centerMapOnMarkerTap: false,
                          ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          child: custom_widgets.customMap(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            addresses: (GetTransactionsCall.addressesList(
                              formMainGetTransactionsResponse.jsonBody,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList(),
                            allowInteraction: true,
                            allowZoom: true,
                            showZoomControls: false,
                            showLocation: true,
                            centerMapOnMarkerTap: true,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    Color(0x00FFFFFF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 5, 12, 0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.95,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 2,
                                                        color:
                                                            Color(0x4E000000),
                                                        offset: Offset(0, 4),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                      color: Color(0xFFF1F4F8),
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 0, 8, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FlutterFlowDropDown(
                                                          initialOption:
                                                              dropDownSearchTYpeValue ??=
                                                                  'Address',
                                                          options: [
                                                            'Address',
                                                            'MLS ID'
                                                          ],
                                                          onChanged: (val) =>
                                                              setState(() =>
                                                                  dropDownSearchTYpeValue =
                                                                      val),
                                                          width: 90,
                                                          height: 50,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        11,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                          hintText: 'Select',
                                                          fillColor:
                                                              Colors.white,
                                                          elevation: 2,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0,
                                                          borderRadius: 0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      0, 0, 0),
                                                          hidesUnderline: true,
                                                        ),
                                                        if (dropDownSearchTYpeValue ==
                                                            'MLS ID')
                                                          Expanded(
                                                            child: Autocomplete<
                                                                String>(
                                                              initialValue:
                                                                  TextEditingValue(),
                                                              optionsBuilder:
                                                                  (textEditingValue) {
                                                                if (textEditingValue
                                                                        .text ==
                                                                    '') {
                                                                  return const Iterable<
                                                                      String>.empty();
                                                                }
                                                                return (GetTransactionsCall
                                                                        .addressesList(
                                                                  formMainGetTransactionsResponse
                                                                      .jsonBody,
                                                                ) as List)
                                                                    .map<String>(
                                                                        (s) => s
                                                                            .toString())
                                                                    .toList()
                                                                    .toList()
                                                                    .where(
                                                                        (option) {
                                                                  final lowercaseOption =
                                                                      option
                                                                          .toLowerCase();
                                                                  return lowercaseOption.contains(
                                                                      textEditingValue
                                                                          .text
                                                                          .toLowerCase());
                                                                });
                                                              },
                                                              optionsViewBuilder:
                                                                  (context,
                                                                      onSelected,
                                                                      options) {
                                                                return AutocompleteOptionsList(
                                                                  textFieldKey:
                                                                      searchValurTextFieldMLSKey,
                                                                  textController:
                                                                      searchValurTextFieldMLSController!,
                                                                  options: options
                                                                      .toList(),
                                                                  onSelected:
                                                                      onSelected,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                  textHighlightStyle:
                                                                      TextStyle(),
                                                                  elevation: 4,
                                                                  optionBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  optionHighlightColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  maxHeight:
                                                                      200,
                                                                );
                                                              },
                                                              onSelected: (String
                                                                  selection) {
                                                                setState(() =>
                                                                    searchValurTextFieldMLSSelectedOption =
                                                                        selection);
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                              },
                                                              fieldViewBuilder:
                                                                  (
                                                                context,
                                                                textEditingController,
                                                                focusNode,
                                                                onEditingComplete,
                                                              ) {
                                                                searchValurTextFieldMLSController =
                                                                    textEditingController;
                                                                return TextFormField(
                                                                  key:
                                                                      searchValurTextFieldMLSKey,
                                                                  controller:
                                                                      textEditingController,
                                                                  focusNode:
                                                                      focusNode,
                                                                  onEditingComplete:
                                                                      onEditingComplete,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    'searchValurTextFieldMLSController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () => setState(
                                                                        () {}),
                                                                  ),
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Search',
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (dropDownSearchTYpeValue ==
                                                            'Address')
                                                          Expanded(
                                                            child: Autocomplete<
                                                                String>(
                                                              initialValue:
                                                                  TextEditingValue(),
                                                              optionsBuilder:
                                                                  (textEditingValue) {
                                                                if (textEditingValue
                                                                        .text ==
                                                                    '') {
                                                                  return const Iterable<
                                                                      String>.empty();
                                                                }
                                                                return (GetTransactionsCall
                                                                        .addressesList(
                                                                  formMainGetTransactionsResponse
                                                                      .jsonBody,
                                                                ) as List)
                                                                    .map<String>(
                                                                        (s) => s
                                                                            .toString())
                                                                    .toList()
                                                                    .toList()
                                                                    .where(
                                                                        (option) {
                                                                  final lowercaseOption =
                                                                      option
                                                                          .toLowerCase();
                                                                  return lowercaseOption.contains(
                                                                      textEditingValue
                                                                          .text
                                                                          .toLowerCase());
                                                                });
                                                              },
                                                              optionsViewBuilder:
                                                                  (context,
                                                                      onSelected,
                                                                      options) {
                                                                return AutocompleteOptionsList(
                                                                  textFieldKey:
                                                                      searchValurTextFieldAddressKey,
                                                                  textController:
                                                                      searchValurTextFieldAddressController!,
                                                                  options: options
                                                                      .toList(),
                                                                  onSelected:
                                                                      onSelected,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                  textHighlightStyle:
                                                                      TextStyle(),
                                                                  elevation: 4,
                                                                  optionBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  optionHighlightColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  maxHeight:
                                                                      200,
                                                                );
                                                              },
                                                              onSelected: (String
                                                                  selection) {
                                                                setState(() =>
                                                                    searchValurTextFieldAddressSelectedOption =
                                                                        selection);
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                              },
                                                              fieldViewBuilder:
                                                                  (
                                                                context,
                                                                textEditingController,
                                                                focusNode,
                                                                onEditingComplete,
                                                              ) {
                                                                searchValurTextFieldAddressController =
                                                                    textEditingController;
                                                                return TextFormField(
                                                                  key:
                                                                      searchValurTextFieldAddressKey,
                                                                  controller:
                                                                      textEditingController,
                                                                  focusNode:
                                                                      focusNode,
                                                                  onEditingComplete:
                                                                      onEditingComplete,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    'searchValurTextFieldAddressController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      setState(
                                                                          () {
                                                                        simpleSearchResults = TextSearch(functions
                                                                                .stringToList((GetTransactionsCall.addressesList(
                                                                                  formMainGetTransactionsResponse.jsonBody,
                                                                                ) as List)
                                                                                    .map<String>((s) => s.toString())
                                                                                    .toList())
                                                                                .map((str) => TextSearchItem(str, [str]))
                                                                                .toList())
                                                                            .search(valueOrDefault<String>(
                                                                              searchValurTextFieldAddressController!.text,
                                                                              '\"\"',
                                                                            ))
                                                                            .map((r) => r.object)
                                                                            .take(10)
                                                                            .toList();
                                                                      });
                                                                    },
                                                                  ),
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Search',
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              if (dropDownSearchTYpeValue ==
                                                                  'Address') {
                                                                if (formKey.currentState ==
                                                                        null ||
                                                                    !formKey
                                                                        .currentState!
                                                                        .validate()) {
                                                                  return;
                                                                }

                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  barrierColor:
                                                                      Colors
                                                                          .transparent,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return Padding(
                                                                      padding: MediaQuery.of(
                                                                              context)
                                                                          .viewInsets,
                                                                      child:
                                                                          Container(
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.82,
                                                                        child:
                                                                            SearchResultsWidget(
                                                                          unparsedAddress:
                                                                              searchValurTextFieldAddressController!.text,
                                                                          statement:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    setState(
                                                                        () {}));
                                                              } else {
                                                                if (dropDownSearchTYpeValue ==
                                                                    'MLS ID') {
                                                                  if (formKey.currentState ==
                                                                          null ||
                                                                      !formKey
                                                                          .currentState!
                                                                          .validate()) {
                                                                    return;
                                                                  }

                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    barrierColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return Padding(
                                                                        padding:
                                                                            MediaQuery.of(context).viewInsets,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.82,
                                                                          child:
                                                                              SearchResultsWidget(
                                                                            listingId:
                                                                                searchValurTextFieldMLSController!.text,
                                                                            statement:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      setState(
                                                                          () {}));
                                                                }
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons.search,
                                                              color:
                                                                  Colors.black,
                                                              size: 20,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final record = GetTransactionsCall.recordsList(
                                formMainGetTransactionsResponse.jsonBody,
                              ).toList();
                              if (record.isEmpty) {
                                return Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    child: AllPropertyListingWidget(),
                                  ),
                                );
                              }
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: PageView.builder(
                                  controller: pageViewController ??=
                                      PageController(
                                          initialPage:
                                              min(0, record.length - 1)),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: record.length,
                                  itemBuilder: (context, recordIndex) {
                                    final recordItem = record[recordIndex];
                                    return Visibility(
                                      visible: functions.searchCheck(
                                          searchValurTextFieldAddressController!
                                              .text,
                                          getJsonField(
                                            recordItem,
                                            r'''$.fields['⚡❗Status']''',
                                          ).toString()),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 12, 12, 12),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed(
                                              'DetailNew',
                                              queryParams: {
                                                'address': serializeParam(
                                                    getJsonField(
                                                      recordItem,
                                                      r'''$.fields['🏡 Address']''',
                                                    ).toString(),
                                                    ParamType.String),
                                                'status': serializeParam(
                                                    getJsonField(
                                                      recordItem,
                                                      r'''$.fields['⚡❗Status']''',
                                                    ).toString(),
                                                    ParamType.String),
                                                'displayDate': serializeParam(
                                                    '', ParamType.String),
                                                'transactionsRecord':
                                                    serializeParam(recordItem,
                                                        ParamType.JSON),
                                                'imagePath': serializeParam(
                                                    getJsonField(
                                                      recordItem,
                                                      r'''$.fields['Property Image'][0].url''',
                                                    ),
                                                    ParamType.String),
                                                'purchasePrice': serializeParam(
                                                    valueOrDefault<String>(
                                                      recordItem,
                                                      '\$.fields[\'💵 Purchase Price\']',
                                                    ),
                                                    ParamType.String),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.network(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        recordItem,
                                                        r'''$.fields['Property Image'][0].url''',
                                                      ),
                                                      'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyamin-mellish-186077.jpg&fm=jpg',
                                                    ),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.45,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            1,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.4,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 8, 8, 8),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            getJsonField(
                                                              recordItem,
                                                              r'''$.fields['🏡 Address']''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          if (FFAppState()
                                                              .statusVisiblityCheck
                                                              .contains(
                                                                  getJsonField(
                                                                recordItem,
                                                                r'''$.fields['⚡❗Status']''',
                                                              )))
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if ('${getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString()}' ==
                                                                    'Active')
                                                                  Text(
                                                                    getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              Color(0xFF5CE430),
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                if ('${getJsonField(
                                                                      recordItem,
                                                                      r'''$''',
                                                                    ).toString()}' ==
                                                                    'Pending')
                                                                  Text(
                                                                    getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              Color(0xFFDF723F),
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                if ('${getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString()}' ==
                                                                    'Black')
                                                                  Text(
                                                                    getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).customColor4,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                              ],
                                                            ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        4,
                                                                        4),
                                                            child: Container(
                                                              width: 30,
                                                              height: 30,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  getJsonField(
                                                                    recordItem,
                                                                    r'''$.fields['🤵 Agent Image Test1'][0].url''',
                                                                  ),
                                                                  'https://static.thenounproject.com/png/630729-200.png',
                                                                ),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '\$ ${getJsonField(
                                                              recordItem,
                                                              r'''$.fields['💵 Purchase Price']''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          if (FFAppState()
                                                              .statusVisiblityCheck
                                                              .contains(
                                                                  getJsonField(
                                                                recordItem,
                                                                r'''$.fields['⚡❗Status']''',
                                                              )))
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if ('${getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString()}' ==
                                                                    'Active')
                                                                  Text(
                                                                    getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              Color(0xFF5CE430),
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                if ('${getJsonField(
                                                                      recordItem,
                                                                      r'''$''',
                                                                    ).toString()}' ==
                                                                    'Pending')
                                                                  Text(
                                                                    getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              Color(0xFFDF723F),
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                if ('${getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString()}' ==
                                                                    'Black')
                                                                  Text(
                                                                    getJsonField(
                                                                      recordItem,
                                                                      r'''$.fields['⚡❗Status']''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Nunito',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).customColor4,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.bold,
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
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
