import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EjerciciosRecord extends FirestoreRecord {
  EjerciciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "instrucciones" field.
  String? _instrucciones;
  String get instrucciones => _instrucciones ?? '';
  bool hasInstrucciones() => _instrucciones != null;

  // "duracionSegundos" field.
  int? _duracionSegundos;
  int get duracionSegundos => _duracionSegundos ?? 0;
  bool hasDuracionSegundos() => _duracionSegundos != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "compatibleCon" field.
  String? _compatibleCon;
  String get compatibleCon => _compatibleCon ?? '';
  bool hasCompatibleCon() => _compatibleCon != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _instrucciones = snapshotData['instrucciones'] as String?;
    _duracionSegundos = castToType<int>(snapshotData['duracionSegundos']);
    _video = snapshotData['video'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _compatibleCon = snapshotData['compatibleCon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ejercicios');

  static Stream<EjerciciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EjerciciosRecord.fromSnapshot(s));

  static Future<EjerciciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EjerciciosRecord.fromSnapshot(s));

  static EjerciciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EjerciciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EjerciciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EjerciciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EjerciciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EjerciciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEjerciciosRecordData({
  String? nombre,
  String? instrucciones,
  int? duracionSegundos,
  String? video,
  String? categoria,
  String? compatibleCon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'instrucciones': instrucciones,
      'duracionSegundos': duracionSegundos,
      'video': video,
      'categoria': categoria,
      'compatibleCon': compatibleCon,
    }.withoutNulls,
  );

  return firestoreData;
}

class EjerciciosRecordDocumentEquality implements Equality<EjerciciosRecord> {
  const EjerciciosRecordDocumentEquality();

  @override
  bool equals(EjerciciosRecord? e1, EjerciciosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.instrucciones == e2?.instrucciones &&
        e1?.duracionSegundos == e2?.duracionSegundos &&
        e1?.video == e2?.video &&
        e1?.categoria == e2?.categoria &&
        e1?.compatibleCon == e2?.compatibleCon;
  }

  @override
  int hash(EjerciciosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.instrucciones,
        e?.duracionSegundos,
        e?.video,
        e?.categoria,
        e?.compatibleCon
      ]);

  @override
  bool isValidKey(Object? o) => o is EjerciciosRecord;
}
