import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_tournaments_list_model.dart';
export 'empty_tournaments_list_model.dart';

class EmptyTournamentsListWidget extends StatefulWidget {
  const EmptyTournamentsListWidget({Key? key}) : super(key: key);

  @override
  _EmptyTournamentsListWidgetState createState() =>
      _EmptyTournamentsListWidgetState();
}

class _EmptyTournamentsListWidgetState
    extends State<EmptyTournamentsListWidget> {
  late EmptyTournamentsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyTournamentsListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.hourglass_empty,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 80.0,
        ),
        Text(
          FFLocalizations.of(context).getText(
            'wb6e6exi' /* No new tournaments have been a... */,
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: ' Shamel',
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
                lineHeight: 1.0,
              ),
        ),
        Text(
          FFLocalizations.of(context).getText(
            '7w4ux9nz' /* Or it may have been added prev... */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: ' Shamel',
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
      ],
    );
  }
}
