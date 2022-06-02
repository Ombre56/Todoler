import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profiles/profiles_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksViewWidget extends StatefulWidget {
  const TasksViewWidget({Key key}) : super(key: key);

  @override
  _TasksViewWidgetState createState() => _TasksViewWidgetState();
}

class _TasksViewWidgetState extends State<TasksViewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                alignment: AlignmentDirectional(-0.04, -0.06),
                child: StreamBuilder<List<TasksRecord>>(
                  stream: queryTasksRecord(
                    queryBuilder: (tasksRecord) =>
                        tasksRecord.orderBy('deadline', descending: true),
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
                    List<TasksRecord> tasksListTasksRecordList = snapshot.data;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(tasksListTasksRecordList.length,
                            (tasksListIndex) {
                          final tasksListTasksRecord =
                              tasksListTasksRecordList[tasksListIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                            child: Container(
                              width: 270,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x48EEEEEE),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Text(
                                            tasksListTasksRecord.title,
                                            style: TextStyle(
                                              fontFamily: 'Alexandria Script',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Color(0x7E353535),
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Text(
                                              'Deadline:',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                fontFamily: 'Alexandria Script',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Text(
                                              dateTimeFormat(
                                                  'd/M/y',
                                                  tasksListTasksRecord
                                                      .deadline),
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                          );
                        }),
                      ),
                    );
                  },
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
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        '[taskCategory]',
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
                alignment: AlignmentDirectional(0.99, -0.98),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 100),
                        reverseDuration: Duration(milliseconds: 100),
                        child: ProfilesWidget(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.close,
                    color: Color(0x80000000),
                    size: 44,
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
