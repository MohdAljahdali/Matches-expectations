import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminMatchesAddModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for activeTournamentDD widget.
  String? activeTournamentDDValue;
  FormFieldController<String>? activeTournamentDDValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in activeTournamentDD widget.
  TournamentsRecord? tournamentResCopy;
  // State field(s) for leagueTF widget.
  TextEditingController? leagueTFController;
  String? Function(BuildContext, String?)? leagueTFControllerValidator;
  // State field(s) for seasonTF widget.
  TextEditingController? seasonTFController;
  String? Function(BuildContext, String?)? seasonTFControllerValidator;
  // State field(s) for startDateST widget.
  bool? startDateSTValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for matchStatusST widget.
  bool? matchStatusSTValue;
  // State field(s) for matchStatusDD widget.
  String? matchStatusDDValue;
  FormFieldController<String>? matchStatusDDValueController;
  // Stores action output result for [Custom Action - addNewMatch] action in saveAddNewMatchsB widget.
  String? outputAddNewMatches;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    leagueTFController?.dispose();
    seasonTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
