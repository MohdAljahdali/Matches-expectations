import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_tournaments_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TournamentsListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in isActiveIB widget.
  List<TournamentsRecord>? outputTournamentsListActive;
  // Stores action output result for [Firestore Query - Query a collection] action in isNotActiveIB widget.
  List<TournamentsRecord>? outputTournamentsListNotActive;

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

}
