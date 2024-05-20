import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchRecord extends FirestoreRecord {
  MerchRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "groupPhoto" field.
  String? _groupPhoto;
  String get groupPhoto => _groupPhoto ?? '';
  bool hasGroupPhoto() => _groupPhoto != null;

  // "platilloName" field.
  List<String>? _platilloName;
  List<String> get platilloName => _platilloName ?? const [];
  bool hasPlatilloName() => _platilloName != null;

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  bool hasOrden() => _orden != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "tiempoPreparacion" field.
  int? _tiempoPreparacion;
  int get tiempoPreparacion => _tiempoPreparacion ?? 0;
  bool hasTiempoPreparacion() => _tiempoPreparacion != null;

  // "photoPlatillo" field.
  String? _photoPlatillo;
  String get photoPlatillo => _photoPlatillo ?? '';
  bool hasPhotoPlatillo() => _photoPlatillo != null;

  void _initializeFields() {
    _groupName = snapshotData['groupName'] as String?;
    _groupPhoto = snapshotData['groupPhoto'] as String?;
    _platilloName = getDataList(snapshotData['platilloName']);
    _orden = castToType<int>(snapshotData['orden']);
    _description = snapshotData['description'] as String?;
    _tiempoPreparacion = castToType<int>(snapshotData['tiempoPreparacion']);
    _photoPlatillo = snapshotData['photoPlatillo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('merch');

  static Stream<MerchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MerchRecord.fromSnapshot(s));

  static Future<MerchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MerchRecord.fromSnapshot(s));

  static MerchRecord fromSnapshot(DocumentSnapshot snapshot) => MerchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MerchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MerchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MerchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MerchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMerchRecordData({
  String? groupName,
  String? groupPhoto,
  int? orden,
  String? description,
  int? tiempoPreparacion,
  String? photoPlatillo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'groupName': groupName,
      'groupPhoto': groupPhoto,
      'orden': orden,
      'description': description,
      'tiempoPreparacion': tiempoPreparacion,
      'photoPlatillo': photoPlatillo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MerchRecordDocumentEquality implements Equality<MerchRecord> {
  const MerchRecordDocumentEquality();

  @override
  bool equals(MerchRecord? e1, MerchRecord? e2) {
    const listEquality = ListEquality();
    return e1?.groupName == e2?.groupName &&
        e1?.groupPhoto == e2?.groupPhoto &&
        listEquality.equals(e1?.platilloName, e2?.platilloName) &&
        e1?.orden == e2?.orden &&
        e1?.description == e2?.description &&
        e1?.tiempoPreparacion == e2?.tiempoPreparacion &&
        e1?.photoPlatillo == e2?.photoPlatillo;
  }

  @override
  int hash(MerchRecord? e) => const ListEquality().hash([
        e?.groupName,
        e?.groupPhoto,
        e?.platilloName,
        e?.orden,
        e?.description,
        e?.tiempoPreparacion,
        e?.photoPlatillo
      ]);

  @override
  bool isValidKey(Object? o) => o is MerchRecord;
}
