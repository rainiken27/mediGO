import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_profile_model.dart';
export 'edit_profile_model.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({Key? key}) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileModel());

    _model.displayNameController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.displayNameFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController(text: currentUserEmail);
    _model.emailFocusNode ??= FocusNode();

    _model.contactNumberController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.contactNumberFocusNode ??= FocusNode();

    _model.addressController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.address, ''));
    _model.addressFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0E153D),
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 324.0,
                height: 187.0,
                decoration: BoxDecoration(
                  color: Color(0xFF10075D),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 335.0,
                      height: 147.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF10075D),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.00, -1.00),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (scaffoldKey.currentState!.isDrawerOpen ||
                                    scaffoldKey.currentState!.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }
                              },
                              text: '',
                              icon: Icon(
                                Icons.close,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF10075D),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 1.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 10.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('LogIn_User');
                                },
                                child: Text(
                                  'LOG IN / SIGN - UP',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFB4B4D0),
                                        fontSize: 24.0,
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
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF0E153D),
          automaticallyImplyLeading: true,
          title: Text(
            'MEDI-GO',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Color(0xFFF51515),
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -0.80),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'data:image/png;base64,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',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 10.0))
                        .addToStart(SizedBox(width: 25.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Name',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => TextFormField(
                                  controller: _model.displayNameController,
                                  focusNode: _model.displayNameFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFFE6EBE4),
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFFE6EBE4),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF272E57),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF51515),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF51515),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF272E57),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.name,
                                  validator: _model
                                      .displayNameControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Text(
                              'Email Address',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFFE6EBE4),
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: TextFormField(
                                controller: _model.emailController,
                                focusNode: _model.emailFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF272E57),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF51515),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF51515),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFF272E57),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFE6EBE4),
                                    ),
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.emailControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Text(
                              'Contact Number',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFFE6EBE4),
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => TextFormField(
                                  controller: _model.contactNumberController,
                                  focusNode: _model.contactNumberFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFFE6EBE4),
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFFE6EBE4),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF272E57),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF51515),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF51515),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF272E57),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.phone,
                                  validator: _model
                                      .contactNumberControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (valueOrDefault<bool>(
                                  valueOrDefault(
                                          currentUserDocument?.type, '') ==
                                      'user',
                                  false,
                                ))
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Address',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                    ),
                                  ),
                              ],
                            ),
                            if (valueOrDefault(currentUserDocument?.type, '') ==
                                'user')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => TextFormField(
                                    controller: _model.addressController,
                                    focusNode: _model.addressFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF272E57),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF51515),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF51515),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFF272E57),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10.0, 0.0, 0.0, 0.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFFE6EBE4),
                                        ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.phone,
                                    validator: _model.addressControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            Align(
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        email: _model.emailController.text,
                                        displayName:
                                            _model.displayNameController.text,
                                        phoneNumber:
                                            _model.contactNumberController.text,
                                        address: _model.addressController.text,
                                      ));

                                      context.pushNamed('Profile');
                                    },
                                    text: 'Save Changes',
                                    options: FFButtonOptions(
                                      width: 320.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFAB0000),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                      hoverColor: Color(0xFFF51515),
                                      hoverTextColor: Color(0xFFE6EBE4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 7.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
