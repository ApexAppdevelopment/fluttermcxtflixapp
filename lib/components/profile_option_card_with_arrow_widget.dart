import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_option_card_with_arrow_model.dart';
export 'profile_option_card_with_arrow_model.dart';

class ProfileOptionCardWithArrowWidget extends StatefulWidget {
  const ProfileOptionCardWithArrowWidget({
    Key? key,
    this.icon,
    this.title,
  }) : super(key: key);

  final Widget? icon;
  final String? title;

  @override
  _ProfileOptionCardWithArrowWidgetState createState() =>
      _ProfileOptionCardWithArrowWidgetState();
}

class _ProfileOptionCardWithArrowWidgetState
    extends State<ProfileOptionCardWithArrowWidget> {
  late ProfileOptionCardWithArrowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileOptionCardWithArrowModel());

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
      height: 48.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Icon(
              FFIcons.knameBookmark,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          Expanded(
            child: Text(
              'Bookmark List',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText1Family),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: Icon(
              FFIcons.knameRightArrow2,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
