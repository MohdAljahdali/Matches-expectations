import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditTournamentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nameTF widget.
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  // State field(s) for nameArTF widget.
  TextEditingController? nameArTFController;
  String? Function(BuildContext, String?)? nameArTFControllerValidator;
  // State field(s) for setEndMatcheDD widget.
  String? setEndMatcheDDValue;
  FormFieldController<String>? setEndMatcheDDValueController;
  // State field(s) for setHomeWinSLT widget.
  bool? setHomeWinSLTValue;
  // State field(s) for setHomeWinPointsCC widget.
  int? setHomeWinPointsCCValue;
  // State field(s) for setAwayWinSLT widget.
  bool? setAwayWinSLTValue;
  // State field(s) for setAwayWinPointsCC widget.
  int? setAwayWinPointsCCValue;
  // State field(s) for setDrawSLT widget.
  bool? setDrawSLTValue;
  // State field(s) for setDrawPointsCC widget.
  int? setDrawPointsCCValue;
  // State field(s) for setHomeGoalsSLT widget.
  bool? setHomeGoalsSLTValue;
  // State field(s) for setHomeGoalsPointsCC widget.
  int? setHomeGoalsPointsCCValue;
  // State field(s) for setAwayGoalsSLT widget.
  bool? setAwayGoalsSLTValue;
  // State field(s) for setAwayGoalsPointsCC widget.
  int? setAwayGoalsPointsCCValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameTFController?.dispose();
    nameArTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
