import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/add_prediction/add_prediction_widget.dart';
import '/home/edit_prediction/edit_prediction_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StreamBuilder<List<MatchesRecord>>(
                  stream: queryMatchesRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitFadingCircle(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<MatchesRecord> listViewMatchesRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewMatchesRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewMatchesRecord =
                            listViewMatchesRecordList[listViewIndex];
                        return Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  width: 100.0,
                                  height: 144.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF063644),
                                        Color(0xFF02131D)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(0.0, -1.0),
                                      end: AlignmentDirectional(0, 1.0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                              .languageCode ==
                                                          'en'
                                                      ? listViewMatchesRecord
                                                          .tournamentName
                                                      : listViewMatchesRecord
                                                          .tournamentNameAr,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 110.0,
                                                    height: 80.0,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            listViewMatchesRecord
                                                                .teamHomeLogo,
                                                            width: 50.0,
                                                            height: 50.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                          context)
                                                                      .languageCode ==
                                                                  'en'
                                                              ? listViewMatchesRecord
                                                                  .teamHomeName
                                                              : listViewMatchesRecord
                                                                  .teamHomeNameAr,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 110.0,
                                                    height: 80.0,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            listViewMatchesRecord
                                                                .teamHAwayLogo,
                                                            width: 50.0,
                                                            height: 50.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                          context)
                                                                      .languageCode ==
                                                                  'en'
                                                              ? listViewMatchesRecord
                                                                  .teamAwayName
                                                              : listViewMatchesRecord
                                                                  .teamAwayNameAr,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 2.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Icon(
                                                      Icons.date_range_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    dateTimeFormat(
                                                      'yyyy-MM-dd',
                                                      listViewMatchesRecord
                                                          .fixtureDate!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 15.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Icon(
                                                      Icons.access_time,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    dateTimeFormat(
                                                      'jm',
                                                      listViewMatchesRecord
                                                          .fixtureDate!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (listViewMatchesRecord.fixtureDate! >
                                  getCurrentTimestamp)
                                Flexible(
                                  flex: 1,
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: StreamBuilder<
                                        List<MatchStandingsRecord>>(
                                      stream: queryMatchStandingsRecord(
                                        queryBuilder: (matchStandingsRecord) =>
                                            matchStandingsRecord
                                                .where('tournamentRef',
                                                    isEqualTo:
                                                        listViewMatchesRecord
                                                            .tournamentRef)
                                                .where('matcheRef',
                                                    isEqualTo:
                                                        listViewMatchesRecord
                                                            .reference)
                                                .where('userRef',
                                                    isEqualTo:
                                                        currentUserReference),
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitFadingCircle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<MatchStandingsRecord>
                                            containerMatchStandingsRecordList =
                                            snapshot.data!;
                                        final containerMatchStandingsRecord =
                                            containerMatchStandingsRecordList
                                                    .isNotEmpty
                                                ? containerMatchStandingsRecordList
                                                    .first
                                                : null;
                                        return Container(
                                          width: 100.0,
                                          height: 144.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    if (containerMatchStandingsRecord !=
                                                        null) {
                                                      return Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            if (containerMatchStandingsRecord!
                                                                    .userUpdate >
                                                                0) {
                                                              return Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await showAlignedDialog(
                                                                      context:
                                                                          context,
                                                                      isGlobal:
                                                                          true,
                                                                      avoidOverflow:
                                                                          false,
                                                                      targetAnchor: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      followerAnchor: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () =>
                                                                                FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                            child:
                                                                                Container(
                                                                              height: 320.0,
                                                                              width: 300.0,
                                                                              child: EditPredictionWidget(
                                                                                tournamentRef: listViewMatchesRecord.tournamentRef!,
                                                                                matcheRef: listViewMatchesRecord.reference,
                                                                                userRef: currentUserReference!,
                                                                                matchStandingsRef: containerMatchStandingsRecord!.reference,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .playlist_add_check_circle_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                        size:
                                                                            36.0,
                                                                      ),
                                                                      Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          containerMatchStandingsRecord
                                                                              ?.userUpdate
                                                                              ?.toString(),
                                                                          '0',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                              fontSize: 30.0,
                                                                              fontWeight: FontWeight.w800,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            } else {
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .not_interested_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 36.0,
                                                                  ),
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'xb2sa992' /* 0 */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              30.0,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              );
                                                            }
                                                          },
                                                        ),
                                                      );
                                                    } else {
                                                      return Builder(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await showAlignedDialog(
                                                              context: context,
                                                              isGlobal: true,
                                                              avoidOverflow:
                                                                  false,
                                                              targetAnchor:
                                                                  AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              followerAnchor:
                                                                  AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                              builder:
                                                                  (dialogContext) {
                                                                return Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () => FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            _model.unfocusNode),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          320.0,
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          AddPredictionWidget(
                                                                        tournamentRef:
                                                                            listViewMatchesRecord.tournamentRef!,
                                                                        matcheRef:
                                                                            listViewMatchesRecord.reference,
                                                                        userRef:
                                                                            currentUserReference!,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .playlist_add_check_circle_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent3,
                                                                size: 36.0,
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'wh4mzuwl' /* 2 */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                      fontSize:
                                                                          24.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
