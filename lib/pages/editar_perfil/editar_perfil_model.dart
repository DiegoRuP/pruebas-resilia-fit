import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/material.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_fotoPerfilUsuario = false;
  FFUploadedFile uploadedLocalFile_fotoPerfilUsuario =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_fotoPerfilUsuario = '';

  // State field(s) for NombreTextField widget.
  FocusNode? nombreTextFieldFocusNode;
  TextEditingController? nombreTextFieldTextController;
  String? Function(BuildContext, String?)?
      nombreTextFieldTextControllerValidator;
  // State field(s) for ApellidoTextField widget.
  FocusNode? apellidoTextFieldFocusNode;
  TextEditingController? apellidoTextFieldTextController;
  String? Function(BuildContext, String?)?
      apellidoTextFieldTextControllerValidator;
  // State field(s) for PesoTextField widget.
  FocusNode? pesoTextFieldFocusNode;
  TextEditingController? pesoTextFieldTextController;
  String? Function(BuildContext, String?)? pesoTextFieldTextControllerValidator;
  // State field(s) for AlturaTextField widget.
  FocusNode? alturaTextFieldFocusNode;
  TextEditingController? alturaTextFieldTextController;
  String? Function(BuildContext, String?)?
      alturaTextFieldTextControllerValidator;
  // State field(s) for EdadField widget.
  FocusNode? edadFieldFocusNode;
  TextEditingController? edadFieldTextController;
  String? Function(BuildContext, String?)? edadFieldTextControllerValidator;
  // State field(s) for SexoField widget.
  String? sexoFieldValue;
  FormFieldController<String>? sexoFieldValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreTextFieldFocusNode?.dispose();
    nombreTextFieldTextController?.dispose();

    apellidoTextFieldFocusNode?.dispose();
    apellidoTextFieldTextController?.dispose();

    pesoTextFieldFocusNode?.dispose();
    pesoTextFieldTextController?.dispose();

    alturaTextFieldFocusNode?.dispose();
    alturaTextFieldTextController?.dispose();

    edadFieldFocusNode?.dispose();
    edadFieldTextController?.dispose();
  }
}
