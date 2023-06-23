import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/tournaments/empty_tournaments_list/empty_tournaments_list_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/request_manager.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTournamentsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountriesDD widget.
  String? countriesDDValue;
  FormFieldController<String>? countriesDDValueController;
  // State field(s) for SeasonsDD widget.
  String? seasonsDDValue;
  FormFieldController<String>? seasonsDDValueController;
  // State field(s) for typeRB widget.
  FormFieldController<String>? typeRBValueController;
  // Stores action output result for [Custom Action - addTournaments] action in searchB widget.
  String? newTournamentsOutput;

  /// Query cache managers for this widget.

  final _countryQueryManager = StreamRequestManager<List<CountriesRecord>>();
  Stream<List<CountriesRecord>> countryQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CountriesRecord>> Function() requestFn,
  }) =>
      _countryQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCountryQueryCache() => _countryQueryManager.clear();
  void clearCountryQueryCacheKey(String? uniqueKey) =>
      _countryQueryManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearCountryQueryCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get typeRBValue => typeRBValueController?.value;
}
