import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({Key? key}) : super(key: key);

  @override
  _EventsWidgetState createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  DateTimeRange? calendarSelectedDay1;
  DateTimeRange? calendarSelectedDay2;

  @override
  void initState() {
    super.initState();
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Text(
              'Milestones',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(),
              child: Wrap(
                spacing: 0,
                runSpacing: 0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 400,
                              maxHeight: 400,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: FlutterFlowCalendar(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              iconColor: Color(0xFF57636C),
                              weekFormat: true,
                              weekStartsMonday: true,
                              initialDate: getCurrentTimestamp,
                              rowHeight: 100,
                              onChange: (DateTimeRange? newSelectedDate) {
                                setState(() =>
                                    calendarSelectedDay1 = newSelectedDate);
                              },
                              titleStyle: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                              dayOfWeekStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              dateStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              selectedDateStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              inactiveDateStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0x6B57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 400,
                              maxHeight: 400,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: FlutterFlowCalendar(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              iconColor: Color(0xFF57636C),
                              weekFormat: false,
                              weekStartsMonday: true,
                              initialDate: getCurrentTimestamp,
                              rowHeight: 100,
                              onChange: (DateTimeRange? newSelectedDate) {
                                setState(() =>
                                    calendarSelectedDay2 = newSelectedDate);
                              },
                              titleStyle: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                              dayOfWeekStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              dateStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              selectedDateStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              inactiveDateStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0x6B57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 400,
                        maxHeight: 400,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/IMG_1071.jpg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color(0x230E151B),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 100,
                                height: 32,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  'Next up',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 4,
                                sigmaY: 5,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Color(0x800E151B),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '🔍Inspection Deadline',
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Colors.white,
                                              fontSize: 28,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 0),
                                        child: Text(
                                          '335 N Magnolia ave.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .gray200,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                          child: Text(
                            'This Week',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                            child: Text(
                              'This Week',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF14181B),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            constraints: BoxConstraints(
                              maxWidth: 400,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x230E151B),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/e6e16d00240e4f70f5ab002f9a83548bl-m3743131787od-w1024_h768_x2.webp',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Deposit EMD Deadline',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 4),
                                        child: Text(
                                          '6/22/22',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              'assets/images/Devivo.PNG',
                                              width: 32,
                                              height: 32,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Text(
                                              'George Switzer',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
