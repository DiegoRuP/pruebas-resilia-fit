import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'inicio_sesion_widget.dart' show InicioSesionWidget;
import 'package:flutter/material.dart';

class InicioSesionModel extends FlutterFlowModel<InicioSesionWidget> {
  ///  Local state fields for this page.

  String? savedEmail;

  bool remembeMe = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailAddressTextField widget.
  FocusNode? emailAddressTextFieldFocusNode;
  TextEditingController? emailAddressTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressTextFieldTextControllerValidator;
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    emailAddressTextFieldFocusNode?.dispose();
    emailAddressTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();
  }
}
