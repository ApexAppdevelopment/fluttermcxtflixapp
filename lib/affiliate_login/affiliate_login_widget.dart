import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'affiliate_login_model.dart';
export 'affiliate_login_model.dart';

class AffiliateLoginWidget extends StatefulWidget {
  const AffiliateLoginWidget({Key? key}) : super(key: key);

  @override
  _AffiliateLoginWidgetState createState() => _AffiliateLoginWidgetState();
}

class _AffiliateLoginWidgetState extends State<AffiliateLoginWidget> {
  late AffiliateLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffiliateLoginModel());

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterFlowWebView(
              url: 'https://mcxttoken.goaffpro.com/create-account/sleek',
              bypass: false,
              height: 800.0,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ],
        ),
      ),
    );
  }
}
