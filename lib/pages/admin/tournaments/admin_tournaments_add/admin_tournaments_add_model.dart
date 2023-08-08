import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminTournamentsAddModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for countryCodeDD widget.
  String? countryCodeDDValue;
  FormFieldController<String>? countryCodeDDValueController;
  // State field(s) for seasonDD widget.
  String? seasonDDValue1;
  FormFieldController<String>? seasonDDValueController1;
  // Stores action output result for [Custom Action - addTournaments] action in addTournamentCB widget.
  String? addTournamentResp;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for seasonDD widget.
  String? seasonDDValue2;
  FormFieldController<String>? seasonDDValueController2;
  // Stores action output result for [Backend Call - Insert Row] action in addTournamentMB widget.
  CountriesRow? fdsf;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
