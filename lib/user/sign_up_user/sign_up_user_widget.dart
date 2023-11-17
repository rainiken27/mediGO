import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_user_model.dart';
export 'sign_up_user_model.dart';

class SignUpUserWidget extends StatefulWidget {
  const SignUpUserWidget({
    Key? key,
    String? accountType,
  })  : this.accountType = accountType ?? 'user',
        super(key: key);

  final String accountType;

  @override
  _SignUpUserWidgetState createState() => _SignUpUserWidgetState();
}

class _SignUpUserWidgetState extends State<SignUpUserWidget> {
  late SignUpUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpUserModel());

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.addressController ??= TextEditingController();
    _model.addressFocusNode ??= FocusNode();

    _model.licenseNoController ??= TextEditingController();
    _model.licenseNoFocusNode ??= FocusNode();

    _model.contactNumberController ??= TextEditingController();
    _model.contactNumberFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.confirmPasswordController ??= TextEditingController();
    _model.confirmPasswordFocusNode ??= FocusNode();

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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, -1.00),
            child: Stack(
              alignment: AlignmentDirectional(0.0, -1.0),
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'MEDI-GO',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFFF51515),
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ]
                      .addToStart(SizedBox(width: 130.0))
                      .addToEnd(SizedBox(width: 140.0)),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, -0.80),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (widget.accountType == 'rider')
                          Opacity(
                            opacity: 0.8,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'SignUp_User',
                                  queryParameters: {
                                    'accountType': serializeParam(
                                      'user',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                        if (widget.accountType == 'user')
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                color: Color(0xFFF51515),
                                width: 5.0,
                              ),
                            ),
                            child: Visibility(
                              visible: widget.accountType == 'user',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'SignUp_User',
                                    queryParameters: {
                                      'accountType': serializeParam(
                                        'user',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
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
                              ),
                            ),
                          ),
                        if (widget.accountType == 'user')
                          Opacity(
                            opacity: 0.8,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'SignUp_User',
                                  queryParameters: {
                                    'accountType': serializeParam(
                                      'rider',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                        if (widget.accountType == 'rider')
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                color: Color(0xFFF51515),
                                width: 5.0,
                              ),
                            ),
                            child: Visibility(
                              visible: widget.accountType == 'rider',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'SignUp_User',
                                    queryParameters: {
                                      'accountType': serializeParam(
                                        'user',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
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
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, -0.50),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'SIGN-UP',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFFE6EBE4),
                              fontSize: 30.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 200.0, 0.0, 0.0),
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
                                  child: TextFormField(
                                    controller: _model.nameController,
                                    focusNode: _model.nameFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Insert your name',
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
                                    keyboardType: TextInputType.name,
                                    validator: _model.nameControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Text(
                                  'Email',
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
                                      labelText: 'Insert your email address',
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
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model.emailControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (widget.accountType == 'user')
                                      Text(
                                        'Address',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFE6EBE4),
                                            ),
                                      ),
                                  ],
                                ),
                                if (widget.accountType == 'user')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.addressController,
                                      focusNode: _model.addressFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Insert your address',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFE6EBE4),
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      keyboardType: TextInputType.streetAddress,
                                      validator: _model
                                          .addressControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (widget.accountType == 'rider')
                                      Text(
                                        'Driver\'s License ',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFE6EBE4),
                                            ),
                                      ),
                                  ],
                                ),
                                if (widget.accountType == 'rider')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.licenseNoController,
                                      focusNode: _model.licenseNoFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            'Insert your driver\'s license no. ',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFE6EBE4),
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
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
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      keyboardType: TextInputType.streetAddress,
                                      validator: _model
                                          .licenseNoControllerValidator
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
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.contactNumberController,
                                    focusNode: _model.contactNumberFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Insert your contact number',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
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
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    keyboardType: TextInputType.phone,
                                    validator: _model
                                        .contactNumberControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Text(
                                  'Password',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.passwordController,
                                    focusNode: _model.passwordFocusNode,
                                    autofocus: true,
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Insert your password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
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
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model
                                        .passwordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Text(
                                  'Password',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFFE6EBE4),
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.confirmPasswordController,
                                    focusNode: _model.confirmPasswordFocusNode,
                                    autofocus: true,
                                    obscureText:
                                        !_model.confirmPasswordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Confirm your password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFE6EBE4),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
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
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model
                                                  .confirmPasswordVisibility =
                                              !_model.confirmPasswordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.confirmPasswordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model
                                        .confirmPasswordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, 0.00),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            if (_model
                                                    .passwordController.text !=
                                                _model.confirmPasswordController
                                                    .text) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Passwords don\'t match!',
                                                  ),
                                                ),
                                              );
                                              return;
                                            }

                                            final user = await authManager
                                                .createAccountWithEmail(
                                              context,
                                              _model.emailController.text,
                                              _model.passwordController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            await UsersRecord.collection
                                                .doc(user.uid)
                                                .update(createUsersRecordData(
                                                  type: widget.accountType,
                                                  displayName: _model
                                                      .nameController.text,
                                                  address: _model
                                                      .addressController.text,
                                                  phoneNumber: _model
                                                      .contactNumberController
                                                      .text,
                                                  licenseNo: _model
                                                      .licenseNoController.text,
                                                  password: _model
                                                      .passwordController.text,
                                                ));

                                            context.goNamedAuth(
                                                'HomePage', context.mounted);
                                          },
                                          text: 'Sign Up',
                                          options: FFButtonOptions(
                                            width: 320.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFAB0000),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            hoverColor: Color(0xFFF51515),
                                            hoverTextColor: Color(0xFFE6EBE4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(height: 7.0)),
                            ),
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
      ),
    );
  }
}
