import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Entradas" field.
  String? _entradas;
  String get entradas => _entradas ?? '';
  bool hasEntradas() => _entradas != null;

  // "Tostadas" field.
  String? _tostadas;
  String get tostadas => _tostadas ?? '';
  bool hasTostadas() => _tostadas != null;

  // "Tacos" field.
  String? _tacos;
  String get tacos => _tacos ?? '';
  bool hasTacos() => _tacos != null;

  // "Aguachiles" field.
  String? _aguachiles;
  String get aguachiles => _aguachiles ?? '';
  bool hasAguachiles() => _aguachiles != null;

  // "Ceviches" field.
  String? _ceviches;
  String get ceviches => _ceviches ?? '';
  bool hasCeviches() => _ceviches != null;

  // "Cocteles" field.
  String? _cocteles;
  String get cocteles => _cocteles ?? '';
  bool hasCocteles() => _cocteles != null;

  // "ALasBrasas" field.
  String? _aLasBrasas;
  String get aLasBrasas => _aLasBrasas ?? '';
  bool hasALasBrasas() => _aLasBrasas != null;

  // "Caldos" field.
  String? _caldos;
  String get caldos => _caldos ?? '';
  bool hasCaldos() => _caldos != null;

  // "CamaronesFiletes" field.
  String? _camaronesFiletes;
  String get camaronesFiletes => _camaronesFiletes ?? '';
  bool hasCamaronesFiletes() => _camaronesFiletes != null;

  // "Especiales" field.
  String? _especiales;
  String get especiales => _especiales ?? '';
  bool hasEspeciales() => _especiales != null;

  // "Bebidas" field.
  String? _bebidas;
  String get bebidas => _bebidas ?? '';
  bool hasBebidas() => _bebidas != null;

  void _initializeFields() {
    _entradas = snapshotData['Entradas'] as String?;
    _tostadas = snapshotData['Tostadas'] as String?;
    _tacos = snapshotData['Tacos'] as String?;
    _aguachiles = snapshotData['Aguachiles'] as String?;
    _ceviches = snapshotData['Ceviches'] as String?;
    _cocteles = snapshotData['Cocteles'] as String?;
    _aLasBrasas = snapshotData['ALasBrasas'] as String?;
    _caldos = snapshotData['Caldos'] as String?;
    _camaronesFiletes = snapshotData['CamaronesFiletes'] as String?;
    _especiales = snapshotData['Especiales'] as String?;
    _bebidas = snapshotData['Bebidas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? entradas,
  String? tostadas,
  String? tacos,
  String? aguachiles,
  String? ceviches,
  String? cocteles,
  String? aLasBrasas,
  String? caldos,
  String? camaronesFiletes,
  String? especiales,
  String? bebidas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Entradas': entradas,
      'Tostadas': tostadas,
      'Tacos': tacos,
      'Aguachiles': aguachiles,
      'Ceviches': ceviches,
      'Cocteles': cocteles,
      'ALasBrasas': aLasBrasas,
      'Caldos': caldos,
      'CamaronesFiletes': camaronesFiletes,
      'Especiales': especiales,
      'Bebidas': bebidas,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    return e1?.entradas == e2?.entradas &&
        e1?.tostadas == e2?.tostadas &&
        e1?.tacos == e2?.tacos &&
        e1?.aguachiles == e2?.aguachiles &&
        e1?.ceviches == e2?.ceviches &&
        e1?.cocteles == e2?.cocteles &&
        e1?.aLasBrasas == e2?.aLasBrasas &&
        e1?.caldos == e2?.caldos &&
        e1?.camaronesFiletes == e2?.camaronesFiletes &&
        e1?.especiales == e2?.especiales &&
        e1?.bebidas == e2?.bebidas;
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality().hash([
        e?.entradas,
        e?.tostadas,
        e?.tacos,
        e?.aguachiles,
        e?.ceviches,
        e?.cocteles,
        e?.aLasBrasas,
        e?.caldos,
        e?.camaronesFiletes,
        e?.especiales,
        e?.bebidas
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
