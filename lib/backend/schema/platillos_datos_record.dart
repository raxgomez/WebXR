import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlatillosDatosRecord extends FirestoreRecord {
  PlatillosDatosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcionPlatillo" field.
  String? _descripcionPlatillo;
  String get descripcionPlatillo => _descripcionPlatillo ?? '';
  bool hasDescripcionPlatillo() => _descripcionPlatillo != null;

  // "tiempoPreparacion" field.
  int? _tiempoPreparacion;
  int get tiempoPreparacion => _tiempoPreparacion ?? 0;
  bool hasTiempoPreparacion() => _tiempoPreparacion != null;

  // "nombrePlatillo" field.
  String? _nombrePlatillo;
  String get nombrePlatillo => _nombrePlatillo ?? '';
  bool hasNombrePlatillo() => _nombrePlatillo != null;

  // "photoPlatillo" field.
  String? _photoPlatillo;
  String get photoPlatillo => _photoPlatillo ?? '';
  bool hasPhotoPlatillo() => _photoPlatillo != null;

  void _initializeFields() {
    _descripcionPlatillo = snapshotData['descripcionPlatillo'] as String?;
    _tiempoPreparacion = castToType<int>(snapshotData['tiempoPreparacion']);
    _nombrePlatillo = snapshotData['nombrePlatillo'] as String?;
    _photoPlatillo = snapshotData['photoPlatillo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('platillosDatos');

  static Stream<PlatillosDatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlatillosDatosRecord.fromSnapshot(s));

  static Future<PlatillosDatosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlatillosDatosRecord.fromSnapshot(s));

  static PlatillosDatosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlatillosDatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlatillosDatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlatillosDatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlatillosDatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlatillosDatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlatillosDatosRecordData({
  String? descripcionPlatillo,
  int? tiempoPreparacion,
  String? nombrePlatillo,
  String? photoPlatillo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcionPlatillo': descripcionPlatillo,
      'tiempoPreparacion': tiempoPreparacion,
      'nombrePlatillo': nombrePlatillo,
      'photoPlatillo': photoPlatillo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlatillosDatosRecordDocumentEquality
    implements Equality<PlatillosDatosRecord> {
  const PlatillosDatosRecordDocumentEquality();

  @override
  bool equals(PlatillosDatosRecord? e1, PlatillosDatosRecord? e2) {
    return e1?.descripcionPlatillo == e2?.descripcionPlatillo &&
        e1?.tiempoPreparacion == e2?.tiempoPreparacion &&
        e1?.nombrePlatillo == e2?.nombrePlatillo &&
        e1?.photoPlatillo == e2?.photoPlatillo;
  }

  @override
  int hash(PlatillosDatosRecord? e) => const ListEquality().hash([
        e?.descripcionPlatillo,
        e?.tiempoPreparacion,
        e?.nombrePlatillo,
        e?.photoPlatillo
      ]);

  @override
  bool isValidKey(Object? o) => o is PlatillosDatosRecord;
}
