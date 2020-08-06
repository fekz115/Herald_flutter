// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'initialScreenState',
      serializers.serialize(object.initialScreenState,
          specifiedType: const FullType(InitialScreenState)),
      'trainsScreenState',
      serializers.serialize(object.trainsScreenState,
          specifiedType: const FullType(TrainsScreenState)),
      'settingsState',
      serializers.serialize(object.settingsState,
          specifiedType: const FullType(SettingsState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'initialScreenState':
          result.initialScreenState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(InitialScreenState))
              as InitialScreenState);
          break;
        case 'trainsScreenState':
          result.trainsScreenState = serializers.deserialize(value,
                  specifiedType: const FullType(TrainsScreenState))
              as TrainsScreenState;
          break;
        case 'settingsState':
          result.settingsState.replace(serializers.deserialize(value,
              specifiedType: const FullType(SettingsState)) as SettingsState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final InitialScreenState initialScreenState;
  @override
  final TrainsScreenState trainsScreenState;
  @override
  final SettingsState settingsState;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.initialScreenState, this.trainsScreenState, this.settingsState})
      : super._() {
    if (initialScreenState == null) {
      throw new BuiltValueNullFieldError('AppState', 'initialScreenState');
    }
    if (trainsScreenState == null) {
      throw new BuiltValueNullFieldError('AppState', 'trainsScreenState');
    }
    if (settingsState == null) {
      throw new BuiltValueNullFieldError('AppState', 'settingsState');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        initialScreenState == other.initialScreenState &&
        trainsScreenState == other.trainsScreenState &&
        settingsState == other.settingsState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, initialScreenState.hashCode), trainsScreenState.hashCode),
        settingsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('initialScreenState', initialScreenState)
          ..add('trainsScreenState', trainsScreenState)
          ..add('settingsState', settingsState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  InitialScreenStateBuilder _initialScreenState;
  InitialScreenStateBuilder get initialScreenState =>
      _$this._initialScreenState ??= new InitialScreenStateBuilder();
  set initialScreenState(InitialScreenStateBuilder initialScreenState) =>
      _$this._initialScreenState = initialScreenState;

  TrainsScreenState _trainsScreenState;
  TrainsScreenState get trainsScreenState => _$this._trainsScreenState;
  set trainsScreenState(TrainsScreenState trainsScreenState) =>
      _$this._trainsScreenState = trainsScreenState;

  SettingsStateBuilder _settingsState;
  SettingsStateBuilder get settingsState =>
      _$this._settingsState ??= new SettingsStateBuilder();
  set settingsState(SettingsStateBuilder settingsState) =>
      _$this._settingsState = settingsState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _initialScreenState = _$v.initialScreenState?.toBuilder();
      _trainsScreenState = _$v.trainsScreenState;
      _settingsState = _$v.settingsState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              initialScreenState: initialScreenState.build(),
              trainsScreenState: trainsScreenState,
              settingsState: settingsState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'initialScreenState';
        initialScreenState.build();

        _$failedField = 'settingsState';
        settingsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
