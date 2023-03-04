// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sponsorid;
    if (value != null) {
      result
        ..add('sponsorid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refferralcode;
    if (value != null) {
      result
        ..add('refferralcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mcxtwalletaddress;
    if (value != null) {
      result
        ..add('mcxtwalletaddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletbalance;
    if (value != null) {
      result
        ..add('walletbalance')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refferralLink;
    if (value != null) {
      result
        ..add('refferralLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookmark;
    if (value != null) {
      result
        ..add('bookmark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.addedtobookmark;
    if (value != null) {
      result
        ..add('addedtobookmark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UserRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'sponsorid':
          result.sponsorid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refferralcode':
          result.refferralcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mcxtwalletaddress':
          result.mcxtwalletaddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'walletbalance':
          result.walletbalance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refferralLink':
          result.refferralLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bookmark':
          result.bookmark = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'addedtobookmark':
          result.addedtobookmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$UserRecord extends UserRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? sponsorid;
  @override
  final String? refferralcode;
  @override
  final String? city;
  @override
  final String? mcxtwalletaddress;
  @override
  final int? walletbalance;
  @override
  final String? phoneNumber;
  @override
  final String? refferralLink;
  @override
  final DocumentReference<Object?>? bookmark;
  @override
  final String? addedtobookmark;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserRecord([void Function(UserRecordBuilder)? updates]) =>
      (new UserRecordBuilder()..update(updates))._build();

  _$UserRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.sponsorid,
      this.refferralcode,
      this.city,
      this.mcxtwalletaddress,
      this.walletbalance,
      this.phoneNumber,
      this.refferralLink,
      this.bookmark,
      this.addedtobookmark,
      this.ffRef})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        sponsorid == other.sponsorid &&
        refferralcode == other.refferralcode &&
        city == other.city &&
        mcxtwalletaddress == other.mcxtwalletaddress &&
        walletbalance == other.walletbalance &&
        phoneNumber == other.phoneNumber &&
        refferralLink == other.refferralLink &&
        bookmark == other.bookmark &&
        addedtobookmark == other.addedtobookmark &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                email.hashCode),
                                                            displayName
                                                                .hashCode),
                                                        photoUrl.hashCode),
                                                    uid.hashCode),
                                                createdTime.hashCode),
                                            sponsorid.hashCode),
                                        refferralcode.hashCode),
                                    city.hashCode),
                                mcxtwalletaddress.hashCode),
                            walletbalance.hashCode),
                        phoneNumber.hashCode),
                    refferralLink.hashCode),
                bookmark.hashCode),
            addedtobookmark.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('sponsorid', sponsorid)
          ..add('refferralcode', refferralcode)
          ..add('city', city)
          ..add('mcxtwalletaddress', mcxtwalletaddress)
          ..add('walletbalance', walletbalance)
          ..add('phoneNumber', phoneNumber)
          ..add('refferralLink', refferralLink)
          ..add('bookmark', bookmark)
          ..add('addedtobookmark', addedtobookmark)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _sponsorid;
  String? get sponsorid => _$this._sponsorid;
  set sponsorid(String? sponsorid) => _$this._sponsorid = sponsorid;

  String? _refferralcode;
  String? get refferralcode => _$this._refferralcode;
  set refferralcode(String? refferralcode) =>
      _$this._refferralcode = refferralcode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _mcxtwalletaddress;
  String? get mcxtwalletaddress => _$this._mcxtwalletaddress;
  set mcxtwalletaddress(String? mcxtwalletaddress) =>
      _$this._mcxtwalletaddress = mcxtwalletaddress;

  int? _walletbalance;
  int? get walletbalance => _$this._walletbalance;
  set walletbalance(int? walletbalance) =>
      _$this._walletbalance = walletbalance;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _refferralLink;
  String? get refferralLink => _$this._refferralLink;
  set refferralLink(String? refferralLink) =>
      _$this._refferralLink = refferralLink;

  DocumentReference<Object?>? _bookmark;
  DocumentReference<Object?>? get bookmark => _$this._bookmark;
  set bookmark(DocumentReference<Object?>? bookmark) =>
      _$this._bookmark = bookmark;

  String? _addedtobookmark;
  String? get addedtobookmark => _$this._addedtobookmark;
  set addedtobookmark(String? addedtobookmark) =>
      _$this._addedtobookmark = addedtobookmark;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _sponsorid = $v.sponsorid;
      _refferralcode = $v.refferralcode;
      _city = $v.city;
      _mcxtwalletaddress = $v.mcxtwalletaddress;
      _walletbalance = $v.walletbalance;
      _phoneNumber = $v.phoneNumber;
      _refferralLink = $v.refferralLink;
      _bookmark = $v.bookmark;
      _addedtobookmark = $v.addedtobookmark;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRecord build() => _build();

  _$UserRecord _build() {
    final _$result = _$v ??
        new _$UserRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            sponsorid: sponsorid,
            refferralcode: refferralcode,
            city: city,
            mcxtwalletaddress: mcxtwalletaddress,
            walletbalance: walletbalance,
            phoneNumber: phoneNumber,
            refferralLink: refferralLink,
            bookmark: bookmark,
            addedtobookmark: addedtobookmark,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
