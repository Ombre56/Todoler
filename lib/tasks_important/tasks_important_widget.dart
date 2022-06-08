import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../edit_task/edit_task_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../new_task/new_task_widget.dart';
import '../task_category/task_category_widget.dart';
import '../task_view/task_view_widget.dart';
import '../tasks_not_so_important/tasks_not_so_important_widget.dart';
import '../tasks_very_important/tasks_very_important_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksImportantWidget extends StatefulWidget {
  const TasksImportantWidget({Key key}) : super(key: key);

  @override
  _TasksImportantWidgetState createState() => _TasksImportantWidgetState();
}

class _TasksImportantWidgetState extends State<TasksImportantWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(20, 0),
        scale: 0,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
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
                alignment: AlignmentDirectional(-1, -0.99),
                child: InkWell(
                  onTap: () async {
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
                  child: Icon(
                    Icons.chevron_left,
                    color: Color(0x80000000),
                    size: 44,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.9, -0.98),
                child: InkWell(
                  onTap: () async {
                    await signOut();
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  child: Icon(
                    Icons.login,
                    color: Color(0x80000000),
                    size: 40,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.11, -0.87),
                child: Text(
                  'Your tasks!',
                  style: TextStyle(
                    fontFamily: 'Alexandria Script',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 250, 0, 0),
                child: StreamBuilder<List<TasksRecord>>(
                  stream: queryTasksRecord(
                    parent: currentUserReference,
                    limit: 3,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitFoldingCube(
                            color: Color(0xFF1800FF),
                            size: 50,
                          ),
                        ),
                      );
                    }
                    List<TasksRecord> listViewTasksRecordList = snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewTasksRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewTasksRecord =
                            listViewTasksRecordList[listViewIndex];
                        return Visibility(
                          visible:
                              (listViewTasksRecord.validity) == 'important',
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: 270,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0x48EEEEEE),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Color(0xFFFFFA00),
                                    width: 3,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.scale,
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 600),
                                        reverseDuration:
                                            Duration(milliseconds: 600),
                                        child: TaskViewWidget(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: AutoSizeText(
                                                listViewTasksRecord.title
                                                    .maybeHandleOverflow(
                                                  maxChars: 7,
                                                  replacement: '…',
                                                ),
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Alexandria Script',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(100, 0, 0, 10),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                buttonSize: 30,
                                                icon: Icon(
                                                  Icons.mode_edit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  size: 20,
                                                ),
                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      duration: Duration(
                                                          milliseconds: 600),
                                                      reverseDuration: Duration(
                                                          milliseconds: 600),
                                                      child: EditTaskWidget(),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 10),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                buttonSize: 30,
                                                icon: Icon(
                                                  Icons.close_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  size: 20,
                                                ),
                                                onPressed: () async {
                                                  await listViewTasksRecord
                                                      .reference
                                                      .delete();
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            110, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Text(
                                                  'Deadline:',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Alexandria Script',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'd/M/y',
                                                        listViewTasksRecord
                                                            .date),
                                                    'date',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFFF0000),
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
                              ),
                            ),
                          ),
                        );
                      },
                    ).animated([animationsMap['listViewOnPageLoadAnimation']]);
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.62),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Color(0x7E353535),
                              offset: Offset(5, 10),
                            )
                          ],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFFFFFA00),
                            width: 2,
                          ),
                        ),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/9hsjc_2.png',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        FFAppState().important,
                        style: TextStyle(
                          fontFamily: 'Alexandria Script',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, 0.7),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 600),
                          reverseDuration: Duration(milliseconds: 600),
                          child: TasksNotSoImportantWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0x7E353535),
                            offset: Offset(5, 10),
                          )
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF00FF3A),
                          width: 2,
                        ),
                      ),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/albfo_3.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.5, 0.7),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 600),
                          reverseDuration: Duration(milliseconds: 600),
                          child: TasksVeryImportantWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0x7E353535),
                            offset: Offset(5, 10),
                          )
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFB71C1C),
                          width: 2,
                        ),
                      ),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/mcatd_1.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 25),
                      child: Text(
                        'Add new task',
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Alexandria Script',
                              color: Color(0x80FFFFFF),
                              fontSize: 33,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 20),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 600),
                              reverseDuration: Duration(milliseconds: 600),
                              child: NewTaskWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0x48FAF6F6),
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 600),
                                    reverseDuration:
                                        Duration(milliseconds: 600),
                                    child: NewTaskWidget(),
                                  ),
                                );
                              },
                              child: Text(
                                '+',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Alexandria Script',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                ),
                              ),
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
      ),
    );
  }
}
