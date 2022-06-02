import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../new_task/new_task_widget.dart';
import '../profiles/profiles_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCategoryWidget extends StatefulWidget {
  const TaskCategoryWidget({Key key}) : super(key: key);

  @override
  _TaskCategoryWidgetState createState() => _TaskCategoryWidgetState();
}

class _TaskCategoryWidgetState extends State<TaskCategoryWidget> {
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
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/images/todotlo.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.01,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.81, -0.59),
                child: Text(
                  'very important',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Alexandria Script',
                        color: Colors.white,
                        fontSize: 33,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, -0.87),
                child: Text(
                  'Your tasks!',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Alexandria Script',
                        color: Colors.white,
                        fontSize: 58,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.57, 0.17),
                child: Text(
                  'not so important',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Alexandria Script',
                        color: Colors.white,
                        fontSize: 20,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.77, -0.37),
                child: Container(
                  width: 170,
                  height: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/mcatd_1.png',
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.52, -0.16),
                child: Text(
                  'important',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Alexandria Script',
                        color: Colors.white,
                        fontSize: 30,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.74, -0.37),
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFFF0000),
                      width: 3,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.21, 0.92),
                child: Text(
                  'Add new tasks',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Alexandria Script',
                        color: Color(0x80FFFFFF),
                        fontSize: 33,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.74, 0.45),
                child: Container(
                  width: 170,
                  height: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/albfo_3.png',
                    fit: BoxFit.none,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.67, 0.1),
                child: Container(
                  width: 170,
                  height: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/9hsjc_2.png',
                    fit: BoxFit.none,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.59, 0.42),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF00FF3A),
                      width: 3,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.6, 0.1),
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFFFFA00),
                      width: 3,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.91, 0.97),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 60,
                  borderWidth: 1,
                  buttonSize: 90,
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Color(0x7EFFFFFF),
                    size: 60,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 100),
                        reverseDuration: Duration(milliseconds: 100),
                        child: NewTaskWidget(),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.99, -0.98),
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
                alignment: AlignmentDirectional(0.96, -0.98),
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
