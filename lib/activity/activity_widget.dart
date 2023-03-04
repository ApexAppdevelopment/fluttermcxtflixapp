import '/backend/backend.dart';
import '/components/activity_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'activity_model.dart';
export 'activity_model.dart';

class ActivityWidget extends StatefulWidget {
  const ActivityWidget({Key? key}) : super(key: key);

  @override
  _ActivityWidgetState createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  late ActivityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityModel());

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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Activity',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: FlutterFlowTheme.of(context).title2Family,
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 18.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).title2Family),
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: StreamBuilder<List<WatchHistoryRecord>>(
              stream: queryWatchHistoryRecord(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: SpinKitChasingDots(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 40.0,
                      ),
                    ),
                  );
                }
                List<WatchHistoryRecord> columnWatchHistoryRecordList =
                    snapshot.data!;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnWatchHistoryRecordList.length,
                      (columnIndex) {
                    final columnWatchHistoryRecord =
                        columnWatchHistoryRecordList[columnIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: ActivityCardWidget(
                        key: Key(
                            'Keyjwn_${columnIndex}_of_${columnWatchHistoryRecordList.length}'),
                        image:
                            'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/27Mj3rFYP3xqFy7lnz17vEd8Ms.jpg',
                        title: 'The Gray Man',
                        subtitle: 'relased in 07/13/2022 ',
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
