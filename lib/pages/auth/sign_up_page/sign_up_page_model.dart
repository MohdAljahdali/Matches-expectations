import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for emailTF widget.
  TextEditingController? emailTFController;
  String? Function(BuildContext, String?)? emailTFControllerValidator;
  // State field(s) for passwordTF widget.
  TextEditingController? passwordTFController;
  late bool passwordTFVisibility;
  String? Function(BuildContext, String?)? passwordTFControllerValidator;
  String? _passwordTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sxkpxeba' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        '2hp7thhe' /* Minimum eight characters */,
      );
    }
    if (val.length > 16) {
      return FFLocalizations.of(context).getText(
        '96vvfkr1' /* Mxnimum 16 characters */,
      );
    }
    if (!RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jom40mdk' /* at least one uppercase letter,... */,
      );
    }
    return null;
  }

  // State field(s) for confirmPasswordTF widget.
  TextEditingController? confirmPasswordTFController;
  late bool confirmPasswordTFVisibility;
  String? Function(BuildContext, String?)? confirmPasswordTFControllerValidator;
  String? _confirmPasswordTFControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nw42vjzg' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'kpcvgy14' /* Minimum eight characters */,
      );
    }
    if (val.length > 16) {
      return FFLocalizations.of(context).getText(
        'iww0teue' /* Mxnimum 16 characters */,
      );
    }

    return null;
  }

  // State field(s) for nameTF widget.
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  String? _nameTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2uq34y9h' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'rzmtblbn' /* Minimum 8 characters */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'u4tx38fa' /* Mxnimum 20 characters */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordTFVisibility = false;
    passwordTFControllerValidator = _passwordTFControllerValidator;
    confirmPasswordTFVisibility = false;
    confirmPasswordTFControllerValidator =
        _confirmPasswordTFControllerValidator;
    nameTFControllerValidator = _nameTFControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    emailTFController?.dispose();
    passwordTFController?.dispose();
    confirmPasswordTFController?.dispose();
    nameTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
