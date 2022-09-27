import '../components/main_m_e_n_u_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PopupMenuWidget extends StatefulWidget {
  const PopupMenuWidget({
    Key? key,
    this.menuVisiblity,
  }) : super(key: key);

  final bool? menuVisiblity;

  @override
  _PopupMenuWidgetState createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget>
    with TickerProviderStateMixin {
  LatLng? currentUserLocationValue;
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(400, 400),
        scale: 0.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 1),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(400, 400),
        scale: 0.1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(1, 1),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              fillColor: Colors.white,
              icon: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              showLoadingIndicator: true,
              onPressed: () async {
                setState(() => FFAppState().showMenu = true);
              },
            ),
          ),
        ),
        if (FFAppState().showMenu)
          Align(
            alignment: AlignmentDirectional(1, 1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(48, 48, 48, 48),
              child: Material(
                color: Colors.transparent,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    constraints: BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 400,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: MainMENUWidget(
                      mLSID: ' ',
                      address: ' ',
                      coordinates: currentUserLocationValue,
                    ),
                  ),
                ),
              ).animated([
                animationsMap['containerOnPageLoadAnimation']!,
                animationsMap['containerOnActionTriggerAnimation']!
              ]),
            ),
          ),
      ],
    );
  }
}
