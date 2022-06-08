import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../no_tasks/no_tasks_widget.dart';
import '../welcome/welcome_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginRegisterWidget extends StatefulWidget {
  const LoginRegisterWidget({Key key}) : super(key: key);

  @override
  _LoginRegisterWidgetState createState() => _LoginRegisterWidgetState();
}

class _LoginRegisterWidgetState extends State<LoginRegisterWidget> {
  TextEditingController confirmPasswordTextController0;
  bool passwordVisibility3;
  TextEditingController emailTextController2;
  TextEditingController textController1;
  TextEditingController passwordTextController2;
  bool passwordVisibility2;
  TextEditingController emailTextController1;
  TextEditingController passwordTextController1;
  bool passwordVisibility1;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordTextController0 = TextEditingController();
    passwordVisibility3 = false;
    emailTextController2 = TextEditingController();
    textController1 = TextEditingController();
    passwordTextController2 = TextEditingController();
    passwordVisibility2 = false;
    emailTextController1 = TextEditingController();
    passwordTextController1 = TextEditingController();
    passwordVisibility1 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/images/todotlo.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.of(context).primaryBtnText,
                      labelStyle: TextStyle(
                        fontFamily: 'Alexandria Script',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                      indicatorColor:
                          FlutterFlowTheme.of(context).primaryBtnText,
                      tabs: [
                        Tab(
                          text: 'Sign In',
                        ),
                        Tab(
                          text: 'Sign Up',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 100, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                          fontFamily: 'Alexandria Script',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 32,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 330,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0x48FAF6F6),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: TextFormField(
                                        controller: emailTextController1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'emailTextController1',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Enter your email',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          filled: true,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'Password',
                                          style: TextStyle(
                                            fontFamily: 'Alexandria Script',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 32,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 330,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0x48FAF6F6),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          controller: passwordTextController1,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'passwordTextController1',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: !passwordVisibility1,
                                          decoration: InputDecoration(
                                            hintText: 'Enter your password',
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility1 =
                                                    !passwordVisibility1,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                passwordVisibility1
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFF757575),
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 80, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final user = await signInWithEmail(
                                        context,
                                        emailTextController1.text,
                                        passwordTextController1.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: WelcomeWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Login',
                                    options: FFButtonOptions(
                                      width: 280,
                                      height: 60,
                                      color: Color(0xFFEE8B60),
                                      textStyle: TextStyle(
                                        fontFamily: 'Alexandria Script',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 50, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Form(
                                  key: formKey2,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'Displayname',
                                          style: TextStyle(
                                            fontFamily: 'Alexandria Script',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 330,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0x48FAF6F6),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: TextFormField(
                                          controller: textController1,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'textController1',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          onFieldSubmitted: (_) async {
                                            if (formKey2.currentState == null ||
                                                !formKey2.currentState
                                                    .validate()) {
                                              return;
                                            }
                                          },
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Enter your nickname',
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          keyboardType: TextInputType.name,
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Field is required';
                                            }
                                            if (val.length < 1) {
                                              return 'The minimum number of characters is : 1';
                                            }
                                            if (val.length > 10) {
                                              return 'The maximum number of characters is : 10';
                                            }
                                            if (!RegExp(
                                                    kTextValidatorUsernameRegex)
                                                .hasMatch(val)) {
                                              return 'You have entered invalid text';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Form(
                                  key: formKey1,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 0, 0),
                                          child: Text(
                                            'Email',
                                            style: TextStyle(
                                              fontFamily: 'Alexandria Script',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 330,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0x48FAF6F6),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextFormField(
                                            controller: emailTextController2,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'emailTextController2',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              if (formKey1.currentState ==
                                                      null ||
                                                  !formKey1.currentState
                                                      .validate()) {
                                                return;
                                              }
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Enter your email',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              filled: true,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Field is required';
                                              }
                                              if (val.length < 1) {
                                                return 'The minimum number of characters is : 1';
                                              }
                                              if (val.length > 20) {
                                                return 'The maximum number of characters is : 20';
                                              }
                                              if (!RegExp(
                                                      kTextValidatorEmailRegex)
                                                  .hasMatch(val)) {
                                                return 'An invalid email was entered';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Form(
                                  key: formKey4,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 0, 0),
                                          child: Text(
                                            'Password',
                                            style: TextStyle(
                                              fontFamily: 'Alexandria Script',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 330,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0x48FAF6F6),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextFormField(
                                            controller: passwordTextController2,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'passwordTextController2',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              if (formKey4.currentState ==
                                                      null ||
                                                  !formKey4.currentState
                                                      .validate()) {
                                                return;
                                              }
                                            },
                                            autofocus: true,
                                            obscureText: !passwordVisibility2,
                                            decoration: InputDecoration(
                                              hintText: 'Enter your password',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              filled: true,
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => passwordVisibility2 =
                                                      !passwordVisibility2,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  passwordVisibility2
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Field is required';
                                              }
                                              if (val.length < 1) {
                                                return 'The minimum number of characters is : 1';
                                              }
                                              if (val.length > 20) {
                                                return 'The maximum number of characters is : 20';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Form(
                                  key: formKey3,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 0, 0),
                                          child: Text(
                                            'Confirm Password',
                                            style: TextStyle(
                                              fontFamily: 'Alexandria Script',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 330,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0x48FAF6F6),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextFormField(
                                            controller:
                                                confirmPasswordTextController0,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'confirmPasswordTextController0',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              if (formKey3.currentState ==
                                                      null ||
                                                  !formKey3.currentState
                                                      .validate()) {
                                                return;
                                              }
                                            },
                                            autofocus: true,
                                            obscureText: !passwordVisibility3,
                                            decoration: InputDecoration(
                                              hintText: 'Enter your password',
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              filled: true,
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => passwordVisibility3 =
                                                      !passwordVisibility3,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  passwordVisibility3
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Field is required';
                                              }
                                              if (val.length < 1) {
                                                return 'The minimum number of characters is: 1';
                                              }
                                              if (val.length > 20) {
                                                return 'The maximum number of characters is: 20';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 80, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (passwordTextController2?.text !=
                                          confirmPasswordTextController0
                                              ?.text) {
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

                                      final user = await createAccountWithEmail(
                                        context,
                                        emailTextController2.text,
                                        passwordTextController2.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      final usersCreateData =
                                          createUsersRecordData(
                                        displayName: textController1.text,
                                        password:
                                            confirmPasswordTextController0.text,
                                        email: emailTextController2.text,
                                      );
                                      await UsersRecord.collection
                                          .doc(user.uid)
                                          .update(usersCreateData);

                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: NoTasksWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Register',
                                    options: FFButtonOptions(
                                      width: 280,
                                      height: 60,
                                      color: Color(0xFFEE8B60),
                                      textStyle: TextStyle(
                                        fontFamily: 'Alexandria Script',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
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
              Align(
                alignment: AlignmentDirectional(0.03, 0.98),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Text(
                    'Kaem copyrights',
                    style: TextStyle(
                      fontFamily: 'Alexandria Script',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
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
