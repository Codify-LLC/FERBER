import '../components/end_drawer_widget.dart';
import '../components/events_widget.dart';
import '../components/home_page_widget.dart';
import '../components/inbox_widget.dart';
import '../components/stats_widget.dart';
import '../components/team_profile_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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

class _HomeWidgetState extends State<HomeWidget> {
  String? choiceChipsValue1;
  String? choiceChipsValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Home',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          endDrawer: Drawer(
            elevation: 16,
            child: EndDrawerWidget(),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 1,
                              constraints: BoxConstraints(
                                maxWidth: 250,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Visibility(
                                visible: responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 10,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24, 24, 24, 24),
                                          child: Image.asset(
                                            'assets/images/lotus.jpg',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 24, 0, 0),
                                        child: FlutterFlowChoiceChips(
                                          initiallySelected: [
                                            valueOrDefault<String>(
                                              widget.defaultPage,
                                              'Home',
                                            )
                                          ],
                                          options: [
                                            ChipData('Home', Icons.home_sharp),
                                            ChipData('People', Icons.people),
                                            ChipData('Events',
                                                Icons.event_available),
                                            ChipData(
                                                'Statistics', Icons.bar_chart),
                                            ChipData('Inbox', Icons.inbox)
                                          ],
                                          onChanged: (val) => setState(() =>
                                              choiceChipsValue1 = val?.first),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .title3
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            iconColor: Colors.white,
                                            iconSize: 25,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 4, 50, 4),
                                            elevation: 0,
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Color(0xFFF9F9F9),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .title3
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            iconColor: Color(0xFF323B45),
                                            iconSize: 25,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 4, 50, 4),
                                            elevation: 0,
                                          ),
                                          chipSpacing: 400,
                                          rowSpacing: 20,
                                          multiselect: false,
                                          initialized:
                                              choiceChipsValue1 != null,
                                          alignment: WrapAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Home')
                                : (choiceChipsValue2 == 'Home'))
                              Expanded(
                                flex: 5,
                                child: HomePageWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Inbox')
                                : (choiceChipsValue2 == 'Inbox'))
                              Expanded(
                                flex: 4,
                                child: InboxWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Statistics')
                                : (choiceChipsValue2 == 'Statistics'))
                              Expanded(
                                flex: 4,
                                child: StatsWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Events')
                                : (choiceChipsValue2 == 'Events'))
                              Expanded(
                                flex: 4,
                                child: EventsWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'People')
                                : (choiceChipsValue2 == 'People'))
                              Expanded(
                                flex: 4,
                                child: TeamProfileWidget(),
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
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5,
                            child: ClipRRect(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowChoiceChips(
                                          initiallySelected: [
                                            valueOrDefault<String>(
                                              widget.defaultPage,
                                              'Home',
                                            )
                                          ],
                                          options: [
                                            ChipData('Home', Icons.home_sharp),
                                            ChipData('People', Icons.people),
                                            ChipData('Events',
                                                Icons.event_available),
                                            ChipData(
                                                'Statistics', Icons.bar_chart),
                                            ChipData('Inbox', Icons.inbox)
                                          ],
                                          onChanged: (val) => setState(() =>
                                              choiceChipsValue2 = val?.first),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontSize: 1,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                            iconSize: 25,
                                            elevation: 0,
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontSize: 1,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .iconGray,
                                            iconSize: 25,
                                            elevation: 0,
                                          ),
                                          chipSpacing: 20,
                                          multiselect: false,
                                          initialized:
                                              choiceChipsValue2 != null,
                                          alignment: WrapAlignment.spaceBetween,
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
            ),
          ),
        ));
  }
}
