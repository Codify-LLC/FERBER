import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../components/buyer_and_seller_form_widget.dart';
import '../components/custom_auto_complete_widget.dart';
import '../components/property_details_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  ApiCallResponse? apiResult;
  List<dynamic>? filteredRecordsSecond;
  TextEditingController? searchValurTextFieldAddressController;
  ApiCallResponse? apiResultcre;
  List<dynamic>? filteredRecords;
  TextEditingController? searchValurTextFieldMLSController;
  String? dropDownSearchTYpeValue;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.01,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: AirtableAPIsGroup.listTransactionsRecordsCall.call(
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
                final formMainListTransactionsRecordsResponse = snapshot.data!;
                return Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Stack(
                      alignment: AlignmentDirectional(0, 1),
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          child: custom_widgets.Fmap4(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            coordinates: functions
                                .dataToLatLang(
                                    (AirtableAPIsGroup
                                            .listTransactionsRecordsCall
                                            .latitude(
                                      formMainListTransactionsRecordsResponse
                                          .jsonBody,
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList(),
                                    (AirtableAPIsGroup
                                            .listTransactionsRecordsCall
                                            .longitude(
                                      formMainListTransactionsRecordsResponse
                                          .jsonBody,
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList())
                                .toList(),
                            recordItem:
                                AirtableAPIsGroup.listTransactionsRecordsCall
                                    .recordList(
                                      formMainListTransactionsRecordsResponse
                                          .jsonBody,
                                    )
                                    .toList(),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 16, 16, 16),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 20, 2, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                BuyerAndSellerFormWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Text(
                                                    'Hello ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 28,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: AuthUserStreamWidget(
                                                    child: Text(
                                                      currentUserDisplayName,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                fontSize: 26,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 0, 2, 0),
                                            child: Text(
                                              '{\$Total Commission YTD]',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 12, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.95,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
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
                                                                  'MLS ID',
                                                          options: [
                                                            'Address',
                                                            'MLS ID',
                                                            'Agent'
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
                                                                        13,
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
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  searchValurTextFieldMLSController,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                'searchValurTextFieldMLSController',
                                                                Duration(
                                                                    milliseconds:
                                                                        0),
                                                                () async {
                                                                  apiResultcre =
                                                                      await SearchByMLSorSTREETCall
                                                                          .call(
                                                                    listingId:
                                                                        searchValurTextFieldMLSController!
                                                                            .text,
                                                                  );
                                                                  if ((apiResultcre
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    filteredRecords =
                                                                        await actions
                                                                            .searchRecordsData(
                                                                      searchValurTextFieldMLSController!
                                                                          .text,
                                                                      AirtableAPIsGroup
                                                                          .listTransactionsRecordsCall
                                                                          .recordList(
                                                                            formMainListTransactionsRecordsResponse.jsonBody,
                                                                          )
                                                                          .toList(),
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                              ),
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Search',
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedErrorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                suffixIcon:
                                                                    searchValurTextFieldMLSController!
                                                                            .text
                                                                            .isNotEmpty
                                                                        ? InkWell(
                                                                            onTap:
                                                                                () async {
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
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: Color(0xFF757575),
                                                                              size: 22,
                                                                            ),
                                                                          )
                                                                        : null,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        if (dropDownSearchTYpeValue ==
                                                            'Address')
                                                          Expanded(
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  searchValurTextFieldAddressController,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                'searchValurTextFieldAddressController',
                                                                Duration(
                                                                    milliseconds:
                                                                        0),
                                                                () async {
                                                                  apiResult =
                                                                      await SearchByMLSorSTREETCall
                                                                          .call(
                                                                    unparsedAddress:
                                                                        searchValurTextFieldAddressController!
                                                                            .text,
                                                                  );
                                                                  if ((apiResult
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    filteredRecordsSecond =
                                                                        await actions
                                                                            .searchRecordsData(
                                                                      searchValurTextFieldAddressController!
                                                                          .text,
                                                                      AirtableAPIsGroup
                                                                          .listTransactionsRecordsCall
                                                                          .recordList(
                                                                            formMainListTransactionsRecordsResponse.jsonBody,
                                                                          )
                                                                          .toList(),
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                              ),
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Search',
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedErrorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                suffixIcon:
                                                                    searchValurTextFieldAddressController!
                                                                            .text
                                                                            .isNotEmpty
                                                                        ? InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              searchValurTextFieldAddressController?.clear();
                                                                              apiResult = await SearchByMLSorSTREETCall.call(
                                                                                unparsedAddress: searchValurTextFieldAddressController!.text,
                                                                              );
                                                                              if ((apiResult?.succeeded ?? true)) {
                                                                                filteredRecordsSecond = await actions.searchRecordsData(
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
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: Color(0xFF757575),
                                                                              size: 22,
                                                                            ),
                                                                          )
                                                                        : null,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito',
                                                                    fontSize:
                                                                        18,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          100, 0, 16, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxHeight: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(12),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          child: Visibility(
                                            visible: (searchValurTextFieldMLSController!
                                                            .text !=
                                                        null &&
                                                    searchValurTextFieldMLSController!
                                                            .text !=
                                                        '') ||
                                                (searchValurTextFieldAddressController!
                                                            .text !=
                                                        null &&
                                                    searchValurTextFieldAddressController!
                                                            .text !=
                                                        ''),
                                            child: CustomAutoCompleteWidget(
                                              searchText:
                                                  searchValurTextFieldMLSController!
                                                      .text,
                                              mls: dropDownSearchTYpeValue ==
                                                  'MLS ID',
                                              address:
                                                  dropDownSearchTYpeValue ==
                                                      'Address',
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
                        InkWell(
                          onTap: () async {
                            await Future.delayed(
                                const Duration(milliseconds: 100));
                          },
                          child: ClipRRect(
                            child: Container(
                              height: 200,
                              constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.25,
                              ),
                              decoration: BoxDecoration(),
                              child: Visibility(
                                visible: getJsonField(
                                      formMainListTransactionsRecordsResponse
                                          .jsonBody,
                                      r'''$.records''',
                                    ) !=
                                    null,
                                child: Builder(
                                  builder: (context) {
                                    final record = AirtableAPIsGroup
                                        .listTransactionsRecordsCall
                                        .recordList(
                                          formMainListTransactionsRecordsResponse
                                              .jsonBody,
                                        )
                                        .toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: record.length,
                                      itemBuilder: (context, recordIndex) {
                                        final recordItem = record[recordIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() => FFAppState()
                                                          .currentDisplayRecordID =
                                                      getJsonField(
                                                    recordItem,
                                                    r'''$.id''',
                                                  ).toString());
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
                                                        PropertyDetailsWidget(
                                                      recordId: FFAppState()
                                                          .currentDisplayRecordID,
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 350,
                                                    maxHeight: 110,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Hero(
                                                          tag: valueOrDefault<
                                                              String>(
                                                            getJsonField(
                                                              recordItem,
                                                              r'''$.fields['Property Image'][0].url''' +
                                                                  '$recordIndex',
                                                            ),
                                                            'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
                                                          ),
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                recordItem,
                                                                r'''$.fields['Property Image'][0].url''',
                                                              ),
                                                              'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
                                                            ),
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.45,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  if (getJsonField(
                                                                        recordItem,
                                                                        r'''$.fields['🏡 Address']''',
                                                                      ) !=
                                                                      null)
                                                                    Text(
                                                                      getJsonField(
                                                                        recordItem,
                                                                        r'''$.fields['🏡 Address']''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        functions
                                                                            .toStringConverter(getJsonField(
                                                                          recordItem,
                                                                          r'''$.fields['⚡❗Status']''',
                                                                        )),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
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
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            4,
                                                                            4),
                                                                    child:
                                                                        Container(
                                                                      width: 30,
                                                                      height:
                                                                          30,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          getJsonField(
                                                                            recordItem,
                                                                            r'''$.fields['🤵 Agent Image Test1'][0].url''',
                                                                          ),
                                                                          'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-default-avatar-profile-icon-vector-social-media-user-image-vector-illustration-227787227.jpg',
                                                                        ),
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (getJsonField(
                                                                        recordItem,
                                                                        r'''$.fields['💵 Purchase Price']''',
                                                                      ) !=
                                                                      null)
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        formatNumber(
                                                                          functions
                                                                              .stringToDouble(getJsonField(
                                                                            recordItem,
                                                                            r'''$.fields['💵 Purchase Price']''',
                                                                          ).toString()),
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.automatic,
                                                                          currency:
                                                                              '\$',
                                                                        ),
                                                                        '\$0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              2,
                                                                              4,
                                                                              2),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          '👪 ${valueOrDefault<String>(
                                                                            getJsonField(
                                                                              recordItem,
                                                                              r'''$.fields['👪 Type']''',
                                                                            ).toString(),
                                                                            'Not Set',
                                                                          )}',
                                                                          'Not Set',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
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
