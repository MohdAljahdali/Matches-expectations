import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tournamentsTF widget.
  TextEditingController? tournamentsTFController;
  String? Function(BuildContext, String?)? tournamentsTFControllerValidator;
  // State field(s) for seasonTF widget.
  TextEditingController? seasonTFController;
  String? Function(BuildContext, String?)? seasonTFControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - addTeams] action in Button widget.
  String? rutenAddTeams;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tournamentsTFController?.dispose();
    seasonTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
