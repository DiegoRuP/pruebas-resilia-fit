import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'on_boarding_new_widget.dart' show OnBoardingNewWidget;
import 'package:flutter/material.dart';

class OnBoardingNewModel extends FlutterFlowModel<OnBoardingNewWidget> {
  ///  Local state fields for this page.

  String? nombre;

  String? apellido;

  int? edad;

  String? sexo;

  double? peso;

  double? altura;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for nombreOnboarding widget.
  FocusNode? nombreOnboardingFocusNode;
  TextEditingController? nombreOnboardingTextController;
  String? Function(BuildContext, String?)?
      nombreOnboardingTextControllerValidator;
  String? _nombreOnboardingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre is required';
    }

    return null;
  }

  // State field(s) for apellidoOnboarding widget.
  FocusNode? apellidoOnboardingFocusNode;
  TextEditingController? apellidoOnboardingTextController;
  String? Function(BuildContext, String?)?
      apellidoOnboardingTextControllerValidator;
  String? _apellidoOnboardingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Apellido is required';
    }

    return null;
  }

  // State field(s) for edadOnboarding widget.
  FocusNode? edadOnboardingFocusNode;
  TextEditingController? edadOnboardingTextController;
  String? Function(BuildContext, String?)?
      edadOnboardingTextControllerValidator;
  String? _edadOnboardingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Edad is required';
    }

    return null;
  }

  // State field(s) for generoOnboarding widget.
  String? generoOnboardingValue;
  FormFieldController<String>? generoOnboardingValueController;
  // State field(s) for pesoOnboarding widget.
  FocusNode? pesoOnboardingFocusNode;
  TextEditingController? pesoOnboardingTextController;
  String? Function(BuildContext, String?)?
      pesoOnboardingTextControllerValidator;
  String? _pesoOnboardingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Peso is required';
    }

    return null;
  }

  // State field(s) for alturaOnboarding widget.
  FocusNode? alturaOnboardingFocusNode;
  TextEditingController? alturaOnboardingTextController;
  String? Function(BuildContext, String?)?
      alturaOnboardingTextControllerValidator;
  String? _alturaOnboardingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Altura is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreOnboardingTextControllerValidator =
        _nombreOnboardingTextControllerValidator;
    apellidoOnboardingTextControllerValidator =
        _apellidoOnboardingTextControllerValidator;
    edadOnboardingTextControllerValidator =
        _edadOnboardingTextControllerValidator;
    pesoOnboardingTextControllerValidator =
        _pesoOnboardingTextControllerValidator;
    alturaOnboardingTextControllerValidator =
        _alturaOnboardingTextControllerValidator;
  }

  @override
  void dispose() {
    nombreOnboardingFocusNode?.dispose();
    nombreOnboardingTextController?.dispose();

    apellidoOnboardingFocusNode?.dispose();
    apellidoOnboardingTextController?.dispose();

    edadOnboardingFocusNode?.dispose();
    edadOnboardingTextController?.dispose();

    pesoOnboardingFocusNode?.dispose();
    pesoOnboardingTextController?.dispose();

    alturaOnboardingFocusNode?.dispose();
    alturaOnboardingTextController?.dispose();
  }
}
