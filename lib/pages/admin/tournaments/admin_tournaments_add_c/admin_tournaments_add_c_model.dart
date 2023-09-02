import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminTournamentsAddCModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tournamentCodeTF widget.
  TextEditingController? tournamentCodeTFController;
  String? Function(BuildContext, String?)? tournamentCodeTFControllerValidator;
  // State field(s) for seasonDD widget.
  int? seasonDDValue;
  FormFieldController<int>? seasonDDValueController;
  // Stores action output result for [Custom Action - addTournaments] action in signUpB widget.
  DocumentReference? tournamentRef;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tournamentCodeTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
