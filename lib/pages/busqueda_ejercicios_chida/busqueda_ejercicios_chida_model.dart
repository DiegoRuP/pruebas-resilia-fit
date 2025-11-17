import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'busqueda_ejercicios_chida_widget.dart'
    show BusquedaEjerciciosChidaWidget;
import 'package:flutter/material.dart';

class BusquedaEjerciciosChidaModel
    extends FlutterFlowModel<BusquedaEjerciciosChidaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EjerciciosRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
