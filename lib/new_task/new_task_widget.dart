import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../task_category/task_category_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTaskWidget extends StatefulWidget {
  const NewTaskWidget({Key key}) : super(key: key);

  @override
  _NewTaskWidgetState createState() => _NewTaskWidgetState();
}

class _NewTaskWidgetState extends State<NewTaskWidget>
    with TickerProviderStateMixin {
  DateTime datePicked;
  TextEditingController textController3;
  TextEditingController taskDescriptionController;
  TextEditingController taskNameController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      delay: 2,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
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

    taskDescriptionController = TextEditingController();
    taskNameController = TextEditingController();
    textController3 =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked));
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
              Image.asset(
                'assets/images/todotlo.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: AlignmentDirectional(-0.96, -0.98),
                child: InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: Color(0x80000000),
                    size: 44,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.75, -0.96),
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontFamily: 'Alexandria Script',
                    color: Color(0x80000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.84),
                child: Text(
                  'Add new task',
                  style: TextStyle(
                    fontFamily: 'Alexandria Script',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.6),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.84, -0.61),
                        child: Text(
                          'Task name',
                          style: TextStyle(
                            fontFamily: 'Alexandria Script',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ).animated([animationsMap['textOnPageLoadAnimation1']]),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.48, -0.51),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x48FAF6F6),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: taskNameController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'taskNameController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter text',
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: TextStyle(
                              fontFamily: 'Alexandria Script',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation1']]),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.2),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.81, -0.33),
                        child: Text(
                          'Task description',
                          style: TextStyle(
                            fontFamily: 'Alexandria Script',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ).animated([animationsMap['textOnPageLoadAnimation2']]),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.48, -0.1),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0x48FAF6F6),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: taskDescriptionController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'taskDescriptionController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter text',
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: TextStyle(
                              fontFamily: 'Alexandria Script',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation2']]),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.25),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.83, 0.21),
                        child: Text(
                          'Deadline',
                          style: TextStyle(
                            fontFamily: 'Alexandria Script',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ).animated([animationsMap['textOnPageLoadAnimation3']]),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.82, 0.33),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0x48FAF6F6),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  controller: textController3,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController3',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontFamily: 'Alexandria Script',
                                      color: Color(0x80000000),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                    hintText: 'Date',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Alexandria Script',
                                      color: Color(0x80000000),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Alexandria Script',
                                    color: Color(0x80000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                              ).animated([
                                animationsMap['containerOnPageLoadAnimation3']
                              ]),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await DatePicker.showDatePicker(
                                    context,
                                    showTitleActions: true,
                                    onConfirm: (date) {
                                      setState(() => datePicked = date);
                                    },
                                    currentTime: getCurrentTimestamp,
                                    minTime: getCurrentTimestamp,
                                  );
                                },
                                text: 'Click',
                                options: FFButtonOptions(
                                  width: 70,
                                  height: 40,
                                  color: Color(0xFFEF7547),
                                  textStyle: TextStyle(
                                    fontFamily: 'Alexandria Script',
                                    color: Color(0x80000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
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
              ),
              Align(
                alignment: AlignmentDirectional(-0.73, 0.47),
                child: Text(
                  'How important is it?',
                  style: TextStyle(
                    fontFamily: 'Alexandria Script',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation4']]),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.5, 0.61),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF48C612),
                            width: 5,
                          ),
                        ),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation4']]),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.62),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFDADADA),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFFF6FF00),
                            width: 5,
                          ),
                        ),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation5']]),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.5, 0.61),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFFFF0004),
                            width: 5,
                          ),
                        ),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation6']]),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.9),
                child: FFButtonWidget(
                  onPressed: () async {
                    final tasksCreateData = createTasksRecordData(
                      title: taskNameController.text,
                      description: taskDescriptionController.text,
                      deadline: datePicked,
                    );
                    await TasksRecord.createDoc(currentUserReference)
                        .set(tasksCreateData);
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: TaskCategoryWidget(),
                      ),
                    );
                  },
                  text: 'Add my task!',
                  options: FFButtonOptions(
                    width: 270,
                    height: 70,
                    color: Color(0xFFEF7547),
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
      ),
    );
  }
}
