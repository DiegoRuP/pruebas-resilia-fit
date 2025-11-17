import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _peso = castToType<double>(snapshotData['peso']);
    _altura = castToType<double>(snapshotData['altura']);
    _sexo = snapshotData['sexo'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _uid = snapshotData['uid'] as String?;
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  int? edad,
  double? peso,
  double? altura,
  String? sexo,
  String? nombre,
  String? apellidos,
  String? uid,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edad': edad,
      'peso': peso,
      'altura': altura,
      'sexo': sexo,
      'nombre': nombre,
      'apellidos': apellidos,
      'uid': uid,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.edad == e2?.edad &&
        e1?.peso == e2?.peso &&
        e1?.altura == e2?.altura &&
        e1?.sexo == e2?.sexo &&
        e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.uid == e2?.uid &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.edad,
        e?.peso,
        e?.altura,
        e?.sexo,
        e?.nombre,
        e?.apellidos,
        e?.uid,
        e?.tipo
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
