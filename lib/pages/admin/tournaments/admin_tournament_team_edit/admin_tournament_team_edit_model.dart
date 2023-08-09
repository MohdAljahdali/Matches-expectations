import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminTournamentTeamEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for logoUrlTF widget.
  TextEditingController? logoUrlTFController;
  String? Function(BuildContext, String?)? logoUrlTFControllerValidator;
  // State field(s) for nameEnTF widget.
  TextEditingController? nameEnTFController;
  String? Function(BuildContext, String?)? nameEnTFControllerValidator;
  // State field(s) for nameArTF widget.
  TextEditingController? nameArTFController;
  String? Function(BuildContext, String?)? nameArTFControllerValidator;

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
