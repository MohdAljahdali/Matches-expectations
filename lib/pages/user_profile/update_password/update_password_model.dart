import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatePasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for oldPasswordTF widget.
  TextEditingController? oldPasswordTFController;
  late bool oldPasswordTFVisibility;
  String? Function(BuildContext, String?)? oldPasswordTFControllerValidator;
  // State field(s) for newPasswordTF widget.
  TextEditingController? newPasswordTFController;
  late bool newPasswordTFVisibility;
  String? Function(BuildContext, String?)? newPasswordTFControllerValidator;
  String? _newPasswordTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'h1hvy212' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'ovg5styg' /* Minimum eight characters */,
      );
    }
    if (val.length > 16) {
      return FFLocalizations.of(context).getText(
        '206so7dm' /* Mxnimum 16 characters */,
      );
    }
    if (!RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1laxp3d3' /* at least one uppercase letter,... */,
      );
    }
    return null;
  }

  // State field(s) for confirmPasswordTF widget.
  TextEditingController? confirmPasswordTFController;
  late bool confirmPasswordTFVisibility;
  String? Function(BuildContext, String?)? confirmPasswordTFControllerValidator;
  // Stores action output result for [Custom Action - userUpdatePassword] action in signUpB widget.
  String? outputUpdatePassword;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    oldPasswordTFVisibility = false;
    newPasswordTFVisibility = false;
    newPasswordTFControllerValidator = _newPasswordTFControllerValidator;
    confirmPasswordTFVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    oldPasswordTFController?.dispose();
    newPasswordTFController?.dispose();
    confirmPasswordTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
