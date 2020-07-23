// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_known_network.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LastKnownNetwork> _$lastKnownNetworkSerializer =
    new _$LastKnownNetworkSerializer();

class _$LastKnownNetworkSerializer
    implements StructuredSerializer<LastKnownNetwork> {
  @override
  final Iterable<Type> types = const [LastKnownNetwork, _$LastKnownNetwork];
  @override
  final String wireName = 'LastKnownNetwork';

  @override
  Iterable<Object> serialize(Serializers serializers, LastKnownNetwork object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ipAddress != null) {
      result
        ..add('ipAddress')
        ..add(serializers.serialize(object.ipAddress,
            specifiedType: const FullType(String)));
    }
    if (object.wanIpAddress != null) {
      result
        ..add('wanIpAddress')
        ..add(serializers.serialize(object.wanIpAddress,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LastKnownNetwork deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LastKnownNetworkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ipAddress':
          result.ipAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wanIpAddress':
          result.wanIpAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LastKnownNetwork extends LastKnownNetwork {
  @override
  final String ipAddress;
  @override
  final String wanIpAddress;

  factory _$LastKnownNetwork(
          [void Function(LastKnownNetworkBuilder) updates]) =>
      (new LastKnownNetworkBuilder()..update(updates)).build();

  _$LastKnownNetwork._({this.ipAddress, this.wanIpAddress}) : super._();

  @override
  LastKnownNetwork rebuild(void Function(LastKnownNetworkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LastKnownNetworkBuilder toBuilder() =>
      new LastKnownNetworkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastKnownNetwork &&
        ipAddress == other.ipAddress &&
        wanIpAddress == other.wanIpAddress;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ipAddress.hashCode), wanIpAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LastKnownNetwork')
          ..add('ipAddress', ipAddress)
          ..add('wanIpAddress', wanIpAddress))
        .toString();
  }
}

class LastKnownNetworkBuilder
    implements Builder<LastKnownNetwork, LastKnownNetworkBuilder> {
  _$LastKnownNetwork _$v;

  String _ipAddress;
  String get ipAddress => _$this._ipAddress;
  set ipAddress(String ipAddress) => _$this._ipAddress = ipAddress;

  String _wanIpAddress;
  String get wanIpAddress => _$this._wanIpAddress;
  set wanIpAddress(String wanIpAddress) => _$this._wanIpAddress = wanIpAddress;

  LastKnownNetworkBuilder();

  LastKnownNetworkBuilder get _$this {
    if (_$v != null) {
      _ipAddress = _$v.ipAddress;
      _wanIpAddress = _$v.wanIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastKnownNetwork other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LastKnownNetwork;
  }

  @override
  void update(void Function(LastKnownNetworkBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LastKnownNetwork build() {
    final _$result = _$v ??
        new _$LastKnownNetwork._(
            ipAddress: ipAddress, wanIpAddress: wanIpAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
