import '/components/user_profile_info_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminTournamentsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UserProfileInfo component.
  late UserProfileInfoModel userProfileInfoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userProfileInfoModel = createModel(context, () => UserProfileInfoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userProfileInfoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}