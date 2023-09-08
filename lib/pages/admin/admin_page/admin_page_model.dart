import '/components/user_profile_info_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UserProfileInfo component.
  late UserProfileInfoModel userProfileInfoModel;
  // Stores action output result for [Custom Action - newCustomAction] action in Container widget.
  String? ssssssss;

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
