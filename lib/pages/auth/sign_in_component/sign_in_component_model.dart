import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailTF widget.
  TextEditingController? emailTFController;
  String? Function(BuildContext, String?)? emailTFControllerValidator;
  // State field(s) for passwordTF widget.
  TextEditingController? passwordTFController;
  late bool passwordTFVisibility;
  String? Function(BuildContext, String?)? passwordTFControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordTFVisibility = false;
  }

  void dispose() {
    emailTFController?.dispose();
    passwordTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
