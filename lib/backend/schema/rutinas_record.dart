import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RutinasRecord extends FirestoreRecord {
  RutinasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "referenciaEjercicio" field.
  List<DocumentReference>? _referenciaEjercicio;
  List<DocumentReference> get referenciaEjercicio =>
      _referenciaEjercicio ?? const [];
  bool hasReferenciaEjercicio() => _referenciaEjercicio != null;

  // "tiempoEstimadoMin" field.
  int? _tiempoEstimadoMin;
  int get tiempoEstimadoMin => _tiempoEstimadoMin ?? 0;
  bool hasTiempoEstimadoMin() => _tiempoEstimadoMin != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _referenciaEjercicio = getDataList(snapshotData['referenciaEjercicio']);
    _tiempoEstimadoMin = castToType<int>(snapshotData['tiempoEstimadoMin']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rutinas');

  static Stream<RutinasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RutinasRecord.fromSnapshot(s));

  static Future<RutinasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RutinasRecord.fromSnapshot(s));

  static RutinasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RutinasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RutinasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RutinasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RutinasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RutinasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRutinasRecordData({
  String? nombre,
  String? descripcion,
  int? tiempoEstimadoMin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'tiempoEstimadoMin': tiempoEstimadoMin,
    }.withoutNulls,
  );

  return firestoreData;
}

class RutinasRecordDocumentEquality implements Equality<RutinasRecord> {
  const RutinasRecordDocumentEquality();

  @override
  bool equals(RutinasRecord? e1, RutinasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        listEquality.equals(e1?.referenciaEjercicio, e2?.referenciaEjercicio) &&
        e1?.tiempoEstimadoMin == e2?.tiempoEstimadoMin;
  }

  @override
  int hash(RutinasRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.referenciaEjercicio,
        e?.tiempoEstimadoMin
      ]);

  @override
  bool isValidKey(Object? o) => o is RutinasRecord;
}
