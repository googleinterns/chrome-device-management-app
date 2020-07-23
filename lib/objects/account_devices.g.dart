// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_devices.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountDevices> _$accountDevicesSerializer =
    new _$AccountDevicesSerializer();

class _$AccountDevicesSerializer
    implements StructuredSerializer<AccountDevices> {
  @override
  final Iterable<Type> types = const [AccountDevices, _$AccountDevices];
  @override
  final String wireName = 'AccountDevices';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountDevices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.etag != null) {
      result
        ..add('etag')
        ..add(serializers.serialize(object.etag,
            specifiedType: const FullType(String)));
    }
    if (object.kind != null) {
      result
        ..add('kind')
        ..add(serializers.serialize(object.kind,
            specifiedType: const FullType(String)));
    }
    if (object.chromeosdevices != null) {
      result
        ..add('chromeosdevices')
        ..add(serializers.serialize(object.chromeosdevices,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BasicDevice)])));
    }
    if (object.nextPageToken != null) {
      result
        ..add('nextPageToken')
        ..add(serializers.serialize(object.nextPageToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AccountDevices deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountDevicesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'etag':
          result.etag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chromeosdevices':
          result.chromeosdevices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BasicDevice)]))
              as BuiltList<Object>);
          break;
        case 'nextPageToken':
          result.nextPageToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountDevices extends AccountDevices {
  @override
  final String etag;
  @override
  final String kind;
  @override
  final BuiltList<BasicDevice> chromeosdevices;
  @override
  final String nextPageToken;

  factory _$AccountDevices([void Function(AccountDevicesBuilder) updates]) =>
      (new AccountDevicesBuilder()..update(updates)).build();

  _$AccountDevices._(
      {this.etag, this.kind, this.chromeosdevices, this.nextPageToken})
      : super._();

  @override
  AccountDevices rebuild(void Function(AccountDevicesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDevicesBuilder toBuilder() =>
      new AccountDevicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountDevices &&
        etag == other.etag &&
        kind == other.kind &&
        chromeosdevices == other.chromeosdevices &&
        nextPageToken == other.nextPageToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, etag.hashCode), kind.hashCode),
            chromeosdevices.hashCode),
        nextPageToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountDevices')
          ..add('etag', etag)
          ..add('kind', kind)
          ..add('chromeosdevices', chromeosdevices)
          ..add('nextPageToken', nextPageToken))
        .toString();
  }
}

class AccountDevicesBuilder
    implements Builder<AccountDevices, AccountDevicesBuilder> {
  _$AccountDevices _$v;

  String _etag;
  String get etag => _$this._etag;
  set etag(String etag) => _$this._etag = etag;

  String _kind;
  String get kind => _$this._kind;
  set kind(String kind) => _$this._kind = kind;

  ListBuilder<BasicDevice> _chromeosdevices;
  ListBuilder<BasicDevice> get chromeosdevices =>
      _$this._chromeosdevices ??= new ListBuilder<BasicDevice>();
  set chromeosdevices(ListBuilder<BasicDevice> chromeosdevices) =>
      _$this._chromeosdevices = chromeosdevices;

  String _nextPageToken;
  String get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  AccountDevicesBuilder();

  AccountDevicesBuilder get _$this {
    if (_$v != null) {
      _etag = _$v.etag;
      _kind = _$v.kind;
      _chromeosdevices = _$v.chromeosdevices?.toBuilder();
      _nextPageToken = _$v.nextPageToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountDevices other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountDevices;
  }

  @override
  void update(void Function(AccountDevicesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountDevices build() {
    _$AccountDevices _$result;
    try {
      _$result = _$v ??
          new _$AccountDevices._(
              etag: etag,
              kind: kind,
              chromeosdevices: _chromeosdevices?.build(),
              nextPageToken: nextPageToken);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'chromeosdevices';
        _chromeosdevices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccountDevices', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
