import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgresoUsuarioRecord extends FirestoreRecord {
  ProgresoUsuarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "IdRutina" field.
  DocumentReference? _idRutina;
  DocumentReference? get idRutina => _idRutina;
  bool hasIdRutina() => _idRutina != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _idRutina = snapshotData['IdRutina'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('progresoUsuario')
          : FirebaseFirestore.instance.collectionGroup('progresoUsuario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('progresoUsuario').doc(id);

  static Stream<ProgresoUsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgresoUsuarioRecord.fromSnapshot(s));

  static Future<ProgresoUsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgresoUsuarioRecord.fromSnapshot(s));

  static ProgresoUsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgresoUsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgresoUsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgresoUsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgresoUsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgresoUsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgresoUsuarioRecordData({
  DocumentReference? idRutina,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'IdRutina': idRutina,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgresoUsuarioRecordDocumentEquality
    implements Equality<ProgresoUsuarioRecord> {
  const ProgresoUsuarioRecordDocumentEquality();

  @override
  bool equals(ProgresoUsuarioRecord? e1, ProgresoUsuarioRecord? e2) {
    return e1?.idRutina == e2?.idRutina;
  }

  @override
  int hash(ProgresoUsuarioRecord? e) =>
      const ListEquality().hash([e?.idRutina]);

  @override
  bool isValidKey(Object? o) => o is ProgresoUsuarioRecord;
}
