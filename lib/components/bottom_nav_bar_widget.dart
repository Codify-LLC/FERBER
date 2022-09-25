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

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({
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
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ],
        ),
      ),
    );
  }
}
