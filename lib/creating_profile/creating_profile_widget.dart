import '../auth/auth_util.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../profiles/profiles_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatingProfileWidget extends StatefulWidget {
  const CreatingProfileWidget({Key key}) : super(key: key);

  @override
  _CreatingProfileWidgetState createState() => _CreatingProfileWidgetState();
}

class _CreatingProfileWidgetState extends State<CreatingProfileWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
              Align(
                alignment: AlignmentDirectional(0, -0.9),
                child: Text(
                  'Name your profile',
                  style: TextStyle(
                    fontFamily: 'Alexandria Script',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 36,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, -0.19),
                child: InkWell(
                  onTap: () async {
                    final user = await signInAnonymously(context);
                    if (user == null) {
                      return;
                    }
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilesWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: ToggleIcon(
                      onPressed: () async {
                        setState(() => FFAppState().profilePrivate =
                            !FFAppState().profilePrivate);
                      },
                      value: FFAppState().profilePrivate,
                      onIcon: Icon(
                        Icons.check_box,
                        color: Colors.white,
                        size: 50,
                      ),
                      offIcon: Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.4),
                child: Text(
                  'Set your profile to private',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Alexandria Script',
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.09),
                child: Text(
                  'Upload your profile picture',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Alexandria Script',
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.9),
                child: FFButtonWidget(
                  onPressed: () async {
                    final user = await signInAnonymously(context);
                    if (user == null) {
                      return;
                    }
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilesWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Create my profile',
                  options: FFButtonOptions(
                    width: 280,
                    height: 60,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    textStyle: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Alexandria Script',
                          color: Colors.black,
                          fontSize: 32,
                          useGoogleFonts: false,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 5,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.73),
                child: Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    shape: BoxShape.rectangle,
                  ),
                  child: TextFormField(
                    controller: textController,
                    onFieldSubmitted: (_) async {
                      final user = await signInAnonymously(context);
                      if (user == null) {
                        return;
                      }
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilesWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '[Some hint text...]',
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
                    ),
                    style: TextStyle(
                      fontFamily: 'Alexandria Script',
                      color: Color(0x80000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, 0.43),
                child: InkWell(
                  onTap: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      showUploadMessage(
                        context,
                        'Uploading file...',
                        showLoading: true,
                      );
                      final downloadUrls = (await Future.wait(selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes))))
                          .where((u) => u != null)
                          .toList();
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (downloadUrls != null &&
                          downloadUrls.length == selectedMedia.length) {
                        setState(() => uploadedFileUrl = downloadUrls.first);
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
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0x48FAF6F6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          uploadedFileUrl,
                        ).image,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: AutoSizeText(
                        '+',
                        style: TextStyle(
                          fontFamily: 'Alexandria Script',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
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
                    color: Color(0x82000000),
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
