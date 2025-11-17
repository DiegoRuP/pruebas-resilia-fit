import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailAddressTextField widget.
  FocusNode? emailAddressTextFieldFocusNode;
  TextEditingController? emailAddressTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressTextFieldTextControllerValidator;
  // State field(s) for PaswordTextField widget.
  FocusNode? paswordTextFieldFocusNode;
  TextEditingController? paswordTextFieldTextController;
  late bool paswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      paswordTextFieldTextControllerValidator;
  // State field(s) for ConfirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    paswordTextFieldVisibility = false;
    confirmPasswordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    emailAddressTextFieldFocusNode?.dispose();
    emailAddressTextFieldTextController?.dispose();

    paswordTextFieldFocusNode?.dispose();
    paswordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();
  }
}
