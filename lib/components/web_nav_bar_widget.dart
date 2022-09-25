import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import '../inbox/inbox_widget.dart';
import '../milestones/milestones_widget.dart';
import '../profile_t_e_a_m_new/profile_t_e_a_m_new_widget.dart';
import '../stats_new/stats_new_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WebNavBarWidget extends StatefulWidget {
  const WebNavBarWidget({
    Key? key,
    this.people,
    this.calendar,
    this.inbox,
    this.home,
    this.stats,
  }) : super(key: key);

  final bool? people;
  final bool? calendar;
  final bool? inbox;
  final bool? home;
  final bool? stats;

  @override
  _WebNavBarWidgetState createState() => _WebNavBarWidgetState();
}

class _WebNavBarWidgetState extends State<WebNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.24,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (widget.people ?? true)
              InkWell(
                onTap: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileTEAMNewWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!widget.people!)
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.people,
                          color: FlutterFlowTheme.of(context).grayLines,
                          size: 30,
                        ),
                        onPressed: () async {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileTEAMNewWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                    Text(
                      'Team Profile',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
            if (widget.people ?? true)
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.people ?? true)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.people,
                        color: FlutterFlowTheme.of(context).customColor3,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  if (widget.people ?? true)
                    Text(
                      'Team Profile',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                ],
              ),
            if (!widget.calendar!)
              InkWell(
                onTap: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MilestonesWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!widget.calendar!)
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: FaIcon(
                          FontAwesomeIcons.calendarCheck,
                          color: FlutterFlowTheme.of(context).grayLines,
                          size: 30,
                        ),
                        onPressed: () async {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MilestonesWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                    Text(
                      'Events',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
            if (widget.calendar ?? true)
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.calendar ?? true)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.calendarCheck,
                        color: FlutterFlowTheme.of(context).customColor3,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  if (widget.calendar ?? true)
                    Text(
                      'Events',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                ],
              ),
            if (!widget.inbox!)
              InkWell(
                onTap: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InboxWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!widget.inbox!)
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.inbox_rounded,
                          color: FlutterFlowTheme.of(context).grayLines,
                          size: 30,
                        ),
                        onPressed: () async {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InboxWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                    Text(
                      'Inbox',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
            if (widget.inbox ?? true)
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.inbox ?? true)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.inbox_rounded,
                        color: FlutterFlowTheme.of(context).customColor3,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  if (widget.inbox ?? true)
                    Text(
                      'Inbox',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                ],
              ),
            if (!widget.stats!)
              InkWell(
                onTap: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatsNewWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!widget.stats!)
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.stairs_outlined,
                          color: FlutterFlowTheme.of(context).grayLines,
                          size: 30,
                        ),
                        onPressed: () async {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StatsNewWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                    Text(
                      'Statistics',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
            if (widget.stats ?? true)
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.stats ?? true)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.stairs_outlined,
                        color: FlutterFlowTheme.of(context).customColor3,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  if (widget.stats ?? true)
                    Text(
                      'Statistics',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                ],
              ),
            if (!widget.home!)
              InkWell(
                onTap: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!widget.home!)
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.home_outlined,
                          color: FlutterFlowTheme.of(context).grayLines,
                          size: 30,
                        ),
                        onPressed: () async {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                    if (!widget.home!)
                      Text(
                        'Home',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                  ],
                ),
              ),
            if (widget.home ?? true)
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.home ?? true)
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.home_outlined,
                        color: FlutterFlowTheme.of(context).customColor3,
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  if (widget.home ?? true)
                    Text(
                      'Home',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Nunito',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
