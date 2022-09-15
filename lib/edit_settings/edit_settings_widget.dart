import '../auth/auth_util.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EditSettingsWidget extends StatefulWidget {
  const EditSettingsWidget({Key? key}) : super(key: key);

  @override
  _EditSettingsWidgetState createState() => _EditSettingsWidgetState();
}

class _EditSettingsWidgetState extends State<EditSettingsWidget> {
  TextEditingController? textController1;

  String uploadedFileUrl = '';

  TextEditingController? textController2;

  bool? switchListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF090F13),
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Edit Profile',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF090F13),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x430F1113),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1626544827763-d516dce335e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc1fHxwcm9kdWN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                                    width: MediaQuery.of(context).size.width,
                                    height: 130,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: Image.asset(
                                          'assets/images/lotus.jpg',
                                        ).image,
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 48,
                                          icon: Icon(
                                            Icons.photo_camera,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                        Text(
                                          'Change Cover Photo',
                                          style: GoogleFonts.getFont(
                                            'DM Sans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
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
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: AuthUserStreamWidget(
                            child: Container(
                              width: 80,
                              height: 80,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                currentUserPhoto,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrls = (await Future.wait(
                                      selectedMedia.map((m) async =>
                                          await uploadData(
                                              m.storagePath, m.bytes))))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrls.length == selectedMedia.length) {
                                setState(
                                    () => uploadedFileUrl = downloadUrls.first);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload media',
                                );
                                return;
                              }
                            }
                          },
                          text: 'Edit Photo',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFFF1F4F8),
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: textController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF1F4F8),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF1F4F8),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: textController2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Your Name',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF95A1AC),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF1F4F8),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF1F4F8),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SwitchListTile.adaptive(
                        value: switchListTileValue ??= true,
                        onChanged: (newValue) =>
                            setState(() => switchListTileValue = newValue),
                        title: Text(
                          'Recieve Notifications',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        subtitle: Text(
                          'Turn on notifications.',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        tileColor: Colors.white,
                        activeColor: FlutterFlowTheme.of(context).textColor,
                        activeTrackColor: Color(0x8D4B39EF),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button_Secondary pressed ...');
                          },
                          text: 'Save Changes',
                          options: FFButtonOptions(
                            width: 230,
                            height: 50,
                            color: FlutterFlowTheme.of(context).background,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
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
    );
  }
}
