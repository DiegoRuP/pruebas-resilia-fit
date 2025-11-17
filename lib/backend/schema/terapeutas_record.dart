import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TerapeutasRecord extends FirestoreRecord {
  TerapeutasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "especialidad" field.
  String? _especialidad;
  String get especialidad => _especialidad ?? '';
  bool hasEspecialidad() => _especialidad != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nombreCompleto = snapshotData['nombreCompleto'] as String?;
    _especialidad = snapshotData['especialidad'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('terapeutas');

  static Stream<TerapeutasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TerapeutasRecord.fromSnapshot(s));

  static Future<TerapeutasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TerapeutasRecord.fromSnapshot(s));

  static TerapeutasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TerapeutasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TerapeutasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TerapeutasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TerapeutasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TerapeutasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTerapeutasRecordData({
  String? nombreCompleto,
  String? especialidad,
  String? descripcion,
  String? ubicacion,
  String? telefono,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCompleto': nombreCompleto,
      'especialidad': especialidad,
      'descripcion': descripcion,
      'ubicacion': ubicacion,
      'telefono': telefono,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class TerapeutasRecordDocumentEquality implements Equality<TerapeutasRecord> {
  const TerapeutasRecordDocumentEquality();

  @override
  bool equals(TerapeutasRecord? e1, TerapeutasRecord? e2) {
    return e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.especialidad == e2?.especialidad &&
        e1?.descripcion == e2?.descripcion &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.telefono == e2?.telefono &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(TerapeutasRecord? e) => const ListEquality().hash([
        e?.nombreCompleto,
        e?.especialidad,
        e?.descripcion,
        e?.ubicacion,
        e?.telefono,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is TerapeutasRecord;
}
