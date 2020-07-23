// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeviceFiles> _$deviceFilesSerializer = new _$DeviceFilesSerializer();

class _$DeviceFilesSerializer implements StructuredSerializer<DeviceFiles> {
  @override
  final Iterable<Type> types = const [DeviceFiles, _$DeviceFiles];
  @override
  final String wireName = 'DeviceFiles';

  @override
  Iterable<Object> serialize(Serializers serializers, DeviceFiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.downloadUrl != null) {
      result
        ..add('downloadUrl')
        ..add(serializers.serialize(object.downloadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.createTime != null) {
      result
        ..add('createTime')
        ..add(serializers.serialize(object.createTime,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DeviceFiles deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeviceFilesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'downloadUrl':
          result.downloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createTime':
          result.createTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DeviceFiles extends DeviceFiles {
  @override
  final String name;
  @override
  final String type;
  @override
  final String downloadUrl;
  @override
  final String createTime;

  factory _$DeviceFiles([void Function(DeviceFilesBuilder) updates]) =>
      (new DeviceFilesBuilder()..update(updates)).build();

  _$DeviceFiles._({this.name, this.type, this.downloadUrl, this.createTime})
      : super._();

  @override
  DeviceFiles rebuild(void Function(DeviceFilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceFilesBuilder toBuilder() => new DeviceFilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceFiles &&
        name == other.name &&
        type == other.type &&
        downloadUrl == other.downloadUrl &&
        createTime == other.createTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), type.hashCode), downloadUrl.hashCode),
        createTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeviceFiles')
          ..add('name', name)
          ..add('type', type)
          ..add('downloadUrl', downloadUrl)
          ..add('createTime', createTime))
        .toString();
  }
}

class DeviceFilesBuilder implements Builder<DeviceFiles, DeviceFilesBuilder> {
  _$DeviceFiles _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _downloadUrl;
  String get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String downloadUrl) => _$this._downloadUrl = downloadUrl;

  String _createTime;
  String get createTime => _$this._createTime;
  set createTime(String createTime) => _$this._createTime = createTime;

  DeviceFilesBuilder();

  DeviceFilesBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _type = _$v.type;
      _downloadUrl = _$v.downloadUrl;
      _createTime = _$v.createTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceFiles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeviceFiles;
  }

  @override
  void update(void Function(DeviceFilesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeviceFiles build() {
    final _$result = _$v ??
        new _$DeviceFiles._(
            name: name,
            type: type,
            downloadUrl: downloadUrl,
            createTime: createTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
