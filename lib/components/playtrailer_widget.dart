import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'playtrailer_model.dart';
export 'playtrailer_model.dart';

class PlaytrailerWidget extends StatefulWidget {
  const PlaytrailerWidget({
    Key? key,
    this.yttrailer,
  }) : super(key: key);

  final MainmovieRecord? yttrailer;

  @override
  _PlaytrailerWidgetState createState() => _PlaytrailerWidgetState();
}

class _PlaytrailerWidgetState extends State<PlaytrailerWidget> {
  late PlaytrailerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaytrailerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 600.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FlutterFlowYoutubePlayer(
                url: valueOrDefault<String>(
                  widget.yttrailer!.trailer,
                  'https://www.youtube.com/watch?v=M25zXBIUVr0',
                ),
                autoPlay: false,
                looping: true,
                mute: false,
                showControls: true,
                showFullScreen: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
