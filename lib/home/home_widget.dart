import '../components/details_widget.dart';
import '../components/end_drawer_widget.dart';
import '../components/events_widget.dart';
import '../components/home_calendar_widget.dart';
import '../components/home_page_widget.dart';
import '../components/inbox_widget.dart';
import '../components/popup_menu_home_widget.dart';
import '../components/property_details_widget.dart';
import '../components/stats_widget.dart';
import '../components/team_profile_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
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
  };
  String? choiceChipsValue1;
  bool? switchListTileValue;
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
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              ClipRRect(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  constraints: BoxConstraints(
                                    maxWidth: 250,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    elevation: 10,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 24, 24, 24),
                                            child: Image.asset(
                                              'assets/images/ft_logo.png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SwitchListTile(
                                          value: switchListTileValue ??= true,
                                          onChanged: (newValue) async {
                                            setState(() => switchListTileValue =
                                                newValue!);
                                          },
                                          title: Text(
                                            'Switch to TC',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Requires certification',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Lato',
                                                  fontSize: 12,
                                                ),
                                          ),
                                          tileColor: Color(0xFFF5F5F5),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .customColor3,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 24, 0, 0),
                                          child: FlutterFlowChoiceChips(
                                            initiallySelected: [
                                              valueOrDefault<String>(
                                                widget.defaultPage,
                                                'Home',
                                              )
                                            ],
                                            options: [
                                              ChipData(
                                                  'Home', Icons.home_sharp),
                                              ChipData('People', Icons.people),
                                              ChipData('Events',
                                                  Icons.event_available),
                                              ChipData('Statistics',
                                                  Icons.bar_chart),
                                              ChipData('Inbox', Icons.inbox),
                                              ChipData(
                                                  'Tools', Icons.handyman_sharp)
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
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .white,
                                              iconSize: 25,
                                              labelPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(16, 4, 50, 4),
                                              elevation: 0,
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  Color(0xFFF5F5F5),
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
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(16, 4, 50, 4),
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
                                child: HomePageWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Inbox')
                                : (choiceChipsValue2 == 'Inbox'))
                              Expanded(
                                child: InboxWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Statistics')
                                : (choiceChipsValue2 == 'Statistics'))
                              Expanded(
                                child: StatsWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Events')
                                : (choiceChipsValue2 == 'Events'))
                              Expanded(
                                child: EventsWidget(),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'People')
                                : (choiceChipsValue2 == 'People'))
                              Expanded(
                                child: TeamProfileWidget(),
                              ),
                            if ((isWeb &&
                                    (choiceChipsValue1 == 'PropertyDetails')) ||
                                (!isWeb &&
                                    (choiceChipsValue2 == 'PropertyDetails')))
                              Expanded(
                                child: PropertyDetailsWidget(
                                  recordId: FFAppState().currentDisplayRecordID,
                                ),
                              ),
                            if (isWeb
                                ? (choiceChipsValue1 == 'Details')
                                : (choiceChipsValue2 == 'Details'))
                              Expanded(
                                child: DetailsWidget(),
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
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.15,
                              constraints: BoxConstraints(
                                maxHeight: 70,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
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
                                          ChipData(
                                              'Events', Icons.event_available),
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
                                                    fontWeight: FontWeight.w100,
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
                                                    fontWeight: FontWeight.w100,
                                                  ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .iconGray,
                                          iconSize: 25,
                                          elevation: 0,
                                        ),
                                        chipSpacing: 20,
                                        multiselect: false,
                                        initialized: choiceChipsValue2 != null,
                                        alignment: WrapAlignment.spaceBetween,
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
                  Align(
                    alignment: AlignmentDirectional(1, 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1, 1),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 16, 16),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 10,
                                  shape: const CircleBorder(),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
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
                                              child: PopupMenuHomeWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Icon(
                                        Icons.menu,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: 1,
                            height: MediaQuery.of(context).size.height * 0.16,
                            constraints: BoxConstraints(
                              maxHeight: 80,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                          ),
                      ],
                    ),
                  ),
                  if ((isWeb
                          ? (choiceChipsValue1 == 'Home')
                          : (choiceChipsValue2 == 'Home')) &&
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
                              color: FlutterFlowTheme.of(context).white,
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
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: HomeCalendarWidget(),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Icon(
                                Icons.calendar_today,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
