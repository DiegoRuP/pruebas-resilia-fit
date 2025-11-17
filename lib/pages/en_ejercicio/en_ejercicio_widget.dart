import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'en_ejercicio_model.dart';
export 'en_ejercicio_model.dart';

class EnEjercicioWidget extends StatefulWidget {
  const EnEjercicioWidget({
    super.key,
    required this.rutinaReferencia,
    required this.indiceEjercicio,
  });

  final DocumentReference? rutinaReferencia;
  final int? indiceEjercicio;

  static String routeName = 'EnEjercicio';
  static String routePath = 'enEjercicio';

  @override
  State<EnEjercicioWidget> createState() => _EnEjercicioWidgetState();
}

class _EnEjercicioWidgetState extends State<EnEjercicioWidget>
    with TickerProviderStateMixin {
  late EnEjercicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnEjercicioModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RutinasRecord>(
      stream: RutinasRecord.getDocument(widget.rutinaReferencia!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFF1F4F8),
            body: Center(
              child: SizedBox(
                width: 35.0,
                height: 35.0,
                child: SpinKitSquareCircle(
                  color: FlutterFlowTheme.of(context).lineColor,
                  size: 35.0,
                ),
              ),
            ),
          );
        }

        final enEjercicioRutinasRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF1F4F8),
            appBar: AppBar(
              backgroundColor: Color(0xFFF1F4F8),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderRadius: 20.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    ProgresoRutinaWidget.routeName,
                    queryParameters: {
                      'refRutina': serializeParam(
                        widget.rutinaReferencia,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.leftToRight,
                      ),
                    },
                  );
                },
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: StreamBuilder<EjerciciosRecord>(
                stream: EjerciciosRecord.getDocument(enEjercicioRutinasRecord
                    .referenciaEjercicio
                    .elementAtOrNull(widget.indiceEjercicio!)!),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 35.0,
                        height: 35.0,
                        child: SpinKitSquareCircle(
                          color: FlutterFlowTheme.of(context).lineColor,
                          size: 35.0,
                        ),
                      ),
                    );
                  }

                  final columnEjerciciosRecord = snapshot.data!;

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Ejercicio ${widget.indiceEjercicio?.toString()} de ${enEjercicioRutinasRecord.referenciaEjercicio.length.toString()}',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF15161E),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).secondary,
                                FlutterFlowTheme.of(context).tertiary
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(1.0, -1.0),
                              end: AlignmentDirectional(-1.0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Sesión',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowTimer(
                                    initialTime: columnEjerciciosRecord
                                            .duracionSegundos *
                                        1000,
                                    getDisplayTime: (value) =>
                                        StopWatchTimer.getDisplayTime(
                                      value,
                                      hours: false,
                                      milliSecond: false,
                                    ),
                                    controller: _model.timerController,
                                    updateStateInterval:
                                        Duration(milliseconds: 1000),
                                    onChanged:
                                        (value, displayTime, shouldUpdate) {
                                      _model.timerMilliseconds = value;
                                      _model.timerValue = displayTime;
                                      if (shouldUpdate) safeSetState(() {});
                                    },
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x1A000000),
                                  offset: Offset(
                                    0.0,
                                    4.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        child: FlutterFlowVideoPlayer(
                                          path: columnEjerciciosRecord.video,
                                          videoType: VideoType.network,
                                          autoPlay: true,
                                          looping: true,
                                          showControls: false,
                                          allowFullScreen: false,
                                          allowPlaybackSpeedMenu: false,
                                          lazyLoad: false,
                                          pauseOnNavigate: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 20.0, 16.0, 20.0),
                                    child: Text(
                                      columnEjerciciosRecord.nombre,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF15161E),
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 30.0,
                                        buttonSize: 60.0,
                                        fillColor: Color(0x4D9489F5),
                                        icon: Icon(
                                          Icons.skip_previous_rounded,
                                          color: Color(0xFF15161E),
                                          size: 28.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ).animateOnPageLoad(animationsMap[
                                          'iconButtonOnPageLoadAnimation1']!),
                                      FlutterFlowIconButton(
                                        borderRadius: 100.0,
                                        buttonSize: 80.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        icon: Icon(
                                          Icons.play_arrow,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 45.0,
                                        ),
                                        onPressed: () async {
                                          if (_model.duranteEjercicio) {
                                            _model.timerController
                                                .onStartTimer();
                                          } else {
                                            _model.timerController
                                                .onStopTimer();
                                          }
                                        },
                                      ).animateOnPageLoad(animationsMap[
                                          'iconButtonOnPageLoadAnimation2']!),
                                      FlutterFlowIconButton(
                                        borderRadius: 30.0,
                                        buttonSize: 60.0,
                                        fillColor: Color(0x4D9489F5),
                                        icon: Icon(
                                          Icons.skip_next_sharp,
                                          color: Color(0xFF15161E),
                                          size: 28.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ).animateOnPageLoad(animationsMap[
                                          'iconButtonOnPageLoadAnimation3']!),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
