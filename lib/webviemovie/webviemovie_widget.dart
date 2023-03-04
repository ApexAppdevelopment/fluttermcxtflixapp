import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'webviemovie_model.dart';
export 'webviemovie_model.dart';

class WebviemovieWidget extends StatefulWidget {
  const WebviemovieWidget({Key? key}) : super(key: key);

  @override
  _WebviemovieWidgetState createState() => _WebviemovieWidgetState();
}

class _WebviemovieWidgetState extends State<WebviemovieWidget> {
  late WebviemovieModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebviemovieModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                FlutterFlowWebView(
                  url: 'https://tubitv.com/movies/575421/dead-sexy',
                  bypass: false,
                  height: 315.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -0.77),
                  child: Container(
                    width: double.infinity,
                    height: 82.7,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
