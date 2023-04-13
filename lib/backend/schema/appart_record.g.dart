// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppartRecord> _$appartRecordSerializer =
    new _$AppartRecordSerializer();

class _$AppartRecordSerializer implements StructuredSerializer<AppartRecord> {
  @override
  final Iterable<Type> types = const [AppartRecord, _$AppartRecord];
  @override
  final String wireName = 'AppartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nom;
    if (value != null) {
      result
        ..add('Nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ville;
    if (value != null) {
      result
        ..add('Ville')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prixnuit;
    if (value != null) {
      result
        ..add('Prixnuit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prixFrais;
    if (value != null) {
      result
        ..add('PrixFrais')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prixTaxes;
    if (value != null) {
      result
        ..add('PrixTaxes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.informationslogement;
    if (value != null) {
      result
        ..add('Informationslogement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adresse;
    if (value != null) {
      result
        ..add('Adresse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AppartRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ville':
          result.ville = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Prixnuit':
          result.prixnuit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PrixFrais':
          result.prixFrais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PrixTaxes':
          result.prixTaxes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Informationslogement':
          result.informationslogement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Adresse':
          result.adresse = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppartRecord extends AppartRecord {
  @override
  final String? nom;
  @override
  final String? type;
  @override
  final String? ville;
  @override
  final String? description;
  @override
  final String? prixnuit;
  @override
  final String? prixFrais;
  @override
  final String? prixTaxes;
  @override
  final String? informationslogement;
  @override
  final LatLng? adresse;
  @override
  final BuiltList<String>? photos;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppartRecord([void Function(AppartRecordBuilder)? updates]) =>
      (new AppartRecordBuilder()..update(updates))._build();

  _$AppartRecord._(
      {this.nom,
      this.type,
      this.ville,
      this.description,
      this.prixnuit,
      this.prixFrais,
      this.prixTaxes,
      this.informationslogement,
      this.adresse,
      this.photos,
      this.ffRef})
      : super._();

  @override
  AppartRecord rebuild(void Function(AppartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppartRecordBuilder toBuilder() => new AppartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppartRecord &&
        nom == other.nom &&
        type == other.type &&
        ville == other.ville &&
        description == other.description &&
        prixnuit == other.prixnuit &&
        prixFrais == other.prixFrais &&
        prixTaxes == other.prixTaxes &&
        informationslogement == other.informationslogement &&
        adresse == other.adresse &&
        photos == other.photos &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ville.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, prixnuit.hashCode);
    _$hash = $jc(_$hash, prixFrais.hashCode);
    _$hash = $jc(_$hash, prixTaxes.hashCode);
    _$hash = $jc(_$hash, informationslogement.hashCode);
    _$hash = $jc(_$hash, adresse.hashCode);
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppartRecord')
          ..add('nom', nom)
          ..add('type', type)
          ..add('ville', ville)
          ..add('description', description)
          ..add('prixnuit', prixnuit)
          ..add('prixFrais', prixFrais)
          ..add('prixTaxes', prixTaxes)
          ..add('informationslogement', informationslogement)
          ..add('adresse', adresse)
          ..add('photos', photos)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppartRecordBuilder
    implements Builder<AppartRecord, AppartRecordBuilder> {
  _$AppartRecord? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _ville;
  String? get ville => _$this._ville;
  set ville(String? ville) => _$this._ville = ville;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _prixnuit;
  String? get prixnuit => _$this._prixnuit;
  set prixnuit(String? prixnuit) => _$this._prixnuit = prixnuit;

  String? _prixFrais;
  String? get prixFrais => _$this._prixFrais;
  set prixFrais(String? prixFrais) => _$this._prixFrais = prixFrais;

  String? _prixTaxes;
  String? get prixTaxes => _$this._prixTaxes;
  set prixTaxes(String? prixTaxes) => _$this._prixTaxes = prixTaxes;

  String? _informationslogement;
  String? get informationslogement => _$this._informationslogement;
  set informationslogement(String? informationslogement) =>
      _$this._informationslogement = informationslogement;

  LatLng? _adresse;
  LatLng? get adresse => _$this._adresse;
  set adresse(LatLng? adresse) => _$this._adresse = adresse;

  ListBuilder<String>? _photos;
  ListBuilder<String> get photos =>
      _$this._photos ??= new ListBuilder<String>();
  set photos(ListBuilder<String>? photos) => _$this._photos = photos;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppartRecordBuilder() {
    AppartRecord._initializeBuilder(this);
  }

  AppartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _type = $v.type;
      _ville = $v.ville;
      _description = $v.description;
      _prixnuit = $v.prixnuit;
      _prixFrais = $v.prixFrais;
      _prixTaxes = $v.prixTaxes;
      _informationslogement = $v.informationslogement;
      _adresse = $v.adresse;
      _photos = $v.photos?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppartRecord;
  }

  @override
  void update(void Function(AppartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppartRecord build() => _build();

  _$AppartRecord _build() {
    _$AppartRecord _$result;
    try {
      _$result = _$v ??
          new _$AppartRecord._(
              nom: nom,
              type: type,
              ville: ville,
              description: description,
              prixnuit: prixnuit,
              prixFrais: prixFrais,
              prixTaxes: prixTaxes,
              informationslogement: informationslogement,
              adresse: adresse,
              photos: _photos?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppartRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
