import '../backend/backend.dart';
import '../creating_profile/creating_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../task_category/task_category_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilesWidget extends StatefulWidget {
  const ProfilesWidget({Key key}) : super(key: key);

  @override
  _ProfilesWidgetState createState() => _ProfilesWidgetState();
}

class _ProfilesWidgetState extends State<ProfilesWidget> {
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
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.75),
                child: Text(
                  'Choose your profile',
                  style: TextStyle(
                    fontFamily: 'Alexandria Script',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 44,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.35),
                child: StreamBuilder<List<UsersRecord>>(
                  stream: queryUsersRecord(
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
                    List<UsersRecord> profilesListUsersRecordList =
                        snapshot.data;
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                          List.generate(profilesListUsersRecordList.length,
                              (profilesListIndex) {
                        final profilesListUsersRecord =
                            profilesListUsersRecordList[profilesListIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 30, 0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0x80EEEEEE),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        profilesListUsersRecord.photoUrl,
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: CreatingProfileWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          fontFamily: 'Alexandria Script',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.59, 0.09),
                                child: Container(
                                  width: 230,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0x80EEEEEE),
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
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: TaskCategoryWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        profilesListUsersRecord.displayName,
                                        style: TextStyle(
                                          fontFamily: 'Alexandria Script',
                                          color: Color(0xFF353535),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.2),
                child: Text(
                  'Or create a new one!',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Alexandria Script',
                        color: Color(0x6DFFFFFF),
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
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
              Align(
                alignment: AlignmentDirectional(0, 0.36),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x80EEEEEE),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: CreatingProfileWidget(),
                            ),
                          );
                        },
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontFamily: 'Alexandria Script',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
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
      ),
    );
  }
}
