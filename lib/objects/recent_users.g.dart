// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecentUsers> _$recentUsersSerializer = new _$RecentUsersSerializer();

class _$RecentUsersSerializer implements StructuredSerializer<RecentUsers> {
  @override
  final Iterable<Type> types = const [RecentUsers, _$RecentUsers];
  @override
  final String wireName = 'RecentUsers';

  @override
  Iterable<Object> serialize(Serializers serializers, RecentUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RecentUsers deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecentUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RecentUsers extends RecentUsers {
  @override
  final String type;
  @override
  final String email;

  factory _$RecentUsers([void Function(RecentUsersBuilder) updates]) =>
      (new RecentUsersBuilder()..update(updates)).build();

  _$RecentUsers._({this.type, this.email}) : super._();

  @override
  RecentUsers rebuild(void Function(RecentUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecentUsersBuilder toBuilder() => new RecentUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecentUsers && type == other.type && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecentUsers')
          ..add('type', type)
          ..add('email', email))
        .toString();
  }
}

class RecentUsersBuilder implements Builder<RecentUsers, RecentUsersBuilder> {
  _$RecentUsers _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  RecentUsersBuilder();

  RecentUsersBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecentUsers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RecentUsers;
  }

  @override
  void update(void Function(RecentUsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecentUsers build() {
    final _$result = _$v ?? new _$RecentUsers._(type: type, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
