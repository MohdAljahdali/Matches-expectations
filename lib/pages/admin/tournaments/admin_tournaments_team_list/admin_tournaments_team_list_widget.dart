import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_tournaments_team_list_model.dart';
export 'admin_tournaments_team_list_model.dart';

class AdminTournamentsTeamListWidget extends StatefulWidget {
  const AdminTournamentsTeamListWidget({
    Key? key,
    required this.tournamentRef,
  }) : super(key: key);

  final DocumentReference? tournamentRef;

  @override
  _AdminTournamentsTeamListWidgetState createState() =>
      _AdminTournamentsTeamListWidgetState();
}

class _AdminTournamentsTeamListWidgetState
    extends State<AdminTournamentsTeamListWidget> {
  late AdminTournamentsTeamListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminTournamentsTeamListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().updatePTournamentsStruct(
          (e) => e
            ..active = true
            ..translation = '',
        );
      });
    });
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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              iconTheme: IconThemeData(color: Color(0xFF801F1F)),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'yv9ev3dd' /* Tournaments list */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: StreamBuilder<TournamentsRecord>(
                  stream: TournamentsRecord.getDocument(widget.tournamentRef!),
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
                    final columnTournamentsRecord = snapshot.data!;
                    return SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                if (FFAppState()
                                                        .PTournaments
                                                        .translation !=
                                                    '-') {
                                                  return FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    icon: Icon(
                                                      Icons.translate_outlined,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .updatePTournamentsStruct(
                                                          (e) => e
                                                            ..translation = '',
                                                        );
                                                      });
                                                    },
                                                  );
                                                } else {
                                                  return FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent3,
                                                    icon: Icon(
                                                      Icons.g_translate,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState()
                                                            .updatePTournamentsStruct(
                                                          (e) => e
                                                            ..translation = '-',
                                                        );
                                                      });
                                                    },
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          StyledDivider(
                            height: 1.0,
                            thickness: 1.0,
                            indent: 0.0,
                            endIndent: 0.0,
                            color: FlutterFlowTheme.of(context).accent4,
                            lineStyle: DividerLineStyle.dashed,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final teamsList = columnTournamentsRecord
                                    .teamsList
                                    .map((e) => e)
                                    .toList();
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: teamsList.length,
                                  itemBuilder: (context, teamsListIndex) {
                                    final teamsListItem =
                                        teamsList[teamsListIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 6.0),
                                      child: StreamBuilder<TeamsRecord>(
                                        stream: TeamsRecord.getDocument(
                                            teamsListItem),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitFadingCircle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          final card11TeamsRecord =
                                              snapshot.data!;
                                          return Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 7.0,
                                                  color: Color(0x2F1D2429),
                                                  offset: Offset(0.0, 3.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      width: 90.0,
                                                      height: 90.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl:
                                                              card11TeamsRecord
                                                                  .logo,
                                                          width: 90.0,
                                                          height: 90.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  () {
                                                                    if (FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'en') {
                                                                      return card11TeamsRecord
                                                                          .name;
                                                                    } else if (FFLocalizations.of(context)
                                                                            .languageCode ==
                                                                        'ar') {
                                                                      return card11TeamsRecord
                                                                          .nameAr;
                                                                    } else {
                                                                      return card11TeamsRecord
                                                                          .name;
                                                                    }
                                                                  }(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                SingleChildScrollView(
                                                                  scrollDirection:
                                                                      Axis.horizontal,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          RichText(
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'ak5ui8se' /* Country */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'to40qi32' /*  :  */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                TextSpan(
                                                                                  text: card11TeamsRecord.country,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                )
                                                                              ],
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          RichText(
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'rorq2dwr' /* Code */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    '2231ob8a' /*  :  */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                                TextSpan(
                                                                                  text: card11TeamsRecord.code,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                )
                                                                              ],
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Color(
                                                                          0x9AA2A8AF),
                                                                  borderRadius:
                                                                      8.0,
                                                                  borderWidth:
                                                                      2.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .edit_square,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    size: 20.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
