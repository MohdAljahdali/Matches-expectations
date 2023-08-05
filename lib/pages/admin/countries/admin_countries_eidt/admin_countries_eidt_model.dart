import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminCountriesEidtModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for englishNameTF widget.
  TextEditingController? englishNameTFController;
  String? Function(BuildContext, String?)? englishNameTFControllerValidator;
  // State field(s) for arabicNameTF widget.
  TextEditingController? arabicNameTFController;
  String? Function(BuildContext, String?)? arabicNameTFControllerValidator;
  // State field(s) for activeCountryTL widget.
  bool? activeCountryTLValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    englishNameTFController?.dispose();
    arabicNameTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
