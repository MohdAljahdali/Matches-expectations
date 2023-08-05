import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminTournamentEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for logoUrlTF widget.
  TextEditingController? logoUrlTFController;
  String? Function(BuildContext, String?)? logoUrlTFControllerValidator;
  // State field(s) for nameEnTF widget.
  TextEditingController? nameEnTFController;
  String? Function(BuildContext, String?)? nameEnTFControllerValidator;
  // State field(s) for nameArTF widget.
  TextEditingController? nameArTFController;
  String? Function(BuildContext, String?)? nameArTFControllerValidator;
  // State field(s) for ActiveST widget.
  bool? activeSTValue;
  // State field(s) for doubleST widget.
  bool? doubleSTValue;
  // State field(s) for homeWinST widget.
  bool? homeWinSTValue;
  // State field(s) for homeWinPointsCC widget.
  int? homeWinPointsCCValue;
  // State field(s) for awayWinST widget.
  bool? awayWinSTValue;
  // State field(s) for awayWinPointsCC widget.
  int? awayWinPointsCCValue;
  // State field(s) for drawST widget.
  bool? drawSTValue;
  // State field(s) for drawPointsCC widget.
  int? drawPointsCCValue;
  // State field(s) for homeGoalsST widget.
  bool? homeGoalsSTValue;
  // State field(s) for homeGoalsPointsCC widget.
  int? homeGoalsPointsCCValue;
  // State field(s) for awayGoalsST widget.
  bool? awayGoalsSTValue;
  // State field(s) for awayGoalsPointsCC widget.
  int? awayGoalsPointsCCValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    logoUrlTFController?.dispose();
    nameEnTFController?.dispose();
    nameArTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
