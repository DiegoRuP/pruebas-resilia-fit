import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'olvidaste_constrasena_widget.dart' show OlvidasteConstrasenaWidget;
import 'package:flutter/material.dart';

class OlvidasteConstrasenaModel
    extends FlutterFlowModel<OlvidasteConstrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailPasswordReset widget.
  FocusNode? emailPasswordResetFocusNode;
  TextEditingController? emailPasswordResetTextController;
  String? Function(BuildContext, String?)?
      emailPasswordResetTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailPasswordResetFocusNode?.dispose();
    emailPasswordResetTextController?.dispose();
  }
}
