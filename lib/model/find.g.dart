// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Find> _$findSerializer = new _$FindSerializer();

class _$FindSerializer implements StructuredSerializer<Find> {
  @override
  final Iterable<Type> types = const [Find, _$Find];
  @override
  final String wireName = 'Find';

  @override
  Iterable<Object> serialize(Serializers serializers, Find object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'departStation',
      serializers.serialize(object.departStation,
          specifiedType: const FullType(String)),
      'arriveStation',
      serializers.serialize(object.arriveStation,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Find deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FindBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'departStation':
          result.departStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'arriveStation':
          result.arriveStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Find extends Find {
  @override
  final String departStation;
  @override
  final String arriveStation;
  @override
  final DateTime date;

  factory _$Find([void Function(FindBuilder) updates]) =>
      (new FindBuilder()..update(updates)).build();

  _$Find._({this.departStation, this.arriveStation, this.date}) : super._() {
    if (departStation == null) {
      throw new BuiltValueNullFieldError('Find', 'departStation');
    }
    if (arriveStation == null) {
      throw new BuiltValueNullFieldError('Find', 'arriveStation');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Find', 'date');
    }
  }

  @override
  Find rebuild(void Function(FindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindBuilder toBuilder() => new FindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Find &&
        departStation == other.departStation &&
        arriveStation == other.arriveStation &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, departStation.hashCode), arriveStation.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Find')
          ..add('departStation', departStation)
          ..add('arriveStation', arriveStation)
          ..add('date', date))
        .toString();
  }
}

class FindBuilder implements Builder<Find, FindBuilder> {
  _$Find _$v;

  String _departStation;
  String get departStation => _$this._departStation;
  set departStation(String departStation) =>
      _$this._departStation = departStation;

  String _arriveStation;
  String get arriveStation => _$this._arriveStation;
  set arriveStation(String arriveStation) =>
      _$this._arriveStation = arriveStation;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  FindBuilder();

  FindBuilder get _$this {
    if (_$v != null) {
      _departStation = _$v.departStation;
      _arriveStation = _$v.arriveStation;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Find other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Find;
  }

  @override
  void update(void Function(FindBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Find build() {
    final _$result = _$v ??
        new _$Find._(
            departStation: departStation,
            arriveStation: arriveStation,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
