import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailFieldController;
  TextEditingController? passwordController;

  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailFieldController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailFieldController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'login',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/FT-LOGO-3.png',
                          width: 250,
                          height: 75,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        constraints: BoxConstraints(
                          maxWidth: 500,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 16, 12, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText(
                                        'Welcome Back',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.phone_locked,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 16, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: emailFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Email Address',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFDBE2E7),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFDBE2E7),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          textAlign: TextAlign.start,
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Email address is required';
                                            }

                                            if (!RegExp(
                                                    kTextValidatorEmailRegex)
                                                .hasMatch(val)) {
                                              return 'Has to be a valid email address.';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 20, 12, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: passwordController,
                                          obscureText: !passwordVisibility,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText: 'Password ',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Color(0xFF2B343A),
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFDBE2E7),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFDBE2E7),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility =
                                                    !passwordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFFCECECE),
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Nunito',
                                                color: Color(0xFF2B343A),
                                              ),
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Password is required';
                                            }

                                            if (val.length < 8) {
                                              return 'Requires at least 8 characters.';
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await signInWithEmail(
                                              context,
                                              emailFieldController!.text,
                                              passwordController!.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            context.goNamedAuth(
                                                'Home', mounted);
                                          },
                                          text: 'Login',
                                          options: FFButtonOptions(
                                            width: 120,
                                            height: 50,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .title3
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                    ),
                                            elevation: 0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 26),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'register',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 150),
                                                ),
                                              },
                                            );
                                          },
                                          text: 'Create Account',
                                          options: FFButtonOptions(
                                            width: 120,
                                            height: 50,
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .title3
                                                    .override(
                                                      fontFamily: 'Nunito',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                            elevation: 0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          showLoadingIndicator: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Powered by FERBER',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Divider(
                                  height: 2,
                                  thickness: 1.5,
                                  indent: 42,
                                  endIndent: 42,
                                  color: Color(0xFFDBE2E7),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 12),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('ButtonForgotPassword pressed ...');
                                    },
                                    text: 'Forgot Password ?',
                                    options: FFButtonOptions(
                                      width: 220,
                                      height: 45,
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Color(0xFFD22C23),
                                          ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 0,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    showLoadingIndicator: false,
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
        ));
  }
}
