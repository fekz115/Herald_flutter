// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CachedState> _$cachedStateSerializer = new _$CachedStateSerializer();

class _$CachedStateSerializer implements StructuredSerializer<CachedState> {
  @override
  final Iterable<Type> types = const [CachedState, _$CachedState];
  @override
  final String wireName = 'CachedState';

  @override
  Iterable<Object> serialize(Serializers serializers, CachedState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cached != null) {
      result
        ..add('cached')
        ..add(serializers.serialize(object.cached,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Find)])));
    }
    return result;
  }

  @override
  CachedState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CachedStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cached':
          result.cached.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Find)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CachedState extends CachedState {
  @override
  final BuiltList<Find> cached;

  factory _$CachedState([void Function(CachedStateBuilder) updates]) =>
      (new CachedStateBuilder()..update(updates)).build();

  _$CachedState._({this.cached}) : super._();

  @override
  CachedState rebuild(void Function(CachedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CachedStateBuilder toBuilder() => new CachedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CachedState && cached == other.cached;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cached.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CachedState')..add('cached', cached))
        .toString();
  }
}

class CachedStateBuilder implements Builder<CachedState, CachedStateBuilder> {
  _$CachedState _$v;

  ListBuilder<Find> _cached;
  ListBuilder<Find> get cached => _$this._cached ??= new ListBuilder<Find>();
  set cached(ListBuilder<Find> cached) => _$this._cached = cached;

  CachedStateBuilder();

  CachedStateBuilder get _$this {
    if (_$v != null) {
      _cached = _$v.cached?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CachedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CachedState;
  }

  @override
  void update(void Function(CachedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CachedState build() {
    _$CachedState _$result;
    try {
      _$result = _$v ?? new _$CachedState._(cached: _cached?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cached';
        _cached?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CachedState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
