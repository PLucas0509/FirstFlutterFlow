import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appart_record.g.dart';

abstract class AppartRecord
    implements Built<AppartRecord, AppartRecordBuilder> {
  static Serializer<AppartRecord> get serializer => _$appartRecordSerializer;

  @BuiltValueField(wireName: 'Nom')
  String? get nom;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  @BuiltValueField(wireName: 'Ville')
  String? get ville;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Prixnuit')
  String? get prixnuit;

  @BuiltValueField(wireName: 'PrixFrais')
  String? get prixFrais;

  @BuiltValueField(wireName: 'PrixTaxes')
  String? get prixTaxes;

  @BuiltValueField(wireName: 'Informationslogement')
  String? get informationslogement;

  @BuiltValueField(wireName: 'Adresse')
  LatLng? get adresse;

  BuiltList<String>? get photos;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppartRecordBuilder builder) => builder
    ..nom = ''
    ..type = ''
    ..ville = ''
    ..description = ''
    ..prixnuit = ''
    ..prixFrais = ''
    ..prixTaxes = ''
    ..informationslogement = ''
    ..photos = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appart');

  static Stream<AppartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppartRecord._();
  factory AppartRecord([void Function(AppartRecordBuilder) updates]) =
      _$AppartRecord;

  static AppartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppartRecordData({
  String? nom,
  String? type,
  String? ville,
  String? description,
  String? prixnuit,
  String? prixFrais,
  String? prixTaxes,
  String? informationslogement,
  LatLng? adresse,
}) {
  final firestoreData = serializers.toFirestore(
    AppartRecord.serializer,
    AppartRecord(
      (a) => a
        ..nom = nom
        ..type = type
        ..ville = ville
        ..description = description
        ..prixnuit = prixnuit
        ..prixFrais = prixFrais
        ..prixTaxes = prixTaxes
        ..informationslogement = informationslogement
        ..adresse = adresse
        ..photos = null,
    ),
  );

  return firestoreData;
}
