// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'agenda_controller_state.dart';

class AgendaControllerStateMapper
    extends ClassMapperBase<AgendaControllerState> {
  AgendaControllerStateMapper._();

  static AgendaControllerStateMapper? _instance;
  static AgendaControllerStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AgendaControllerStateMapper._());
      EventsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AgendaControllerState';

  static Events? _$events(AgendaControllerState v) => v.events;
  static const Field<AgendaControllerState, Events> _f$events =
      Field('events', _$events);

  @override
  final MappableFields<AgendaControllerState> fields = const {
    #events: _f$events,
  };

  static AgendaControllerState _instantiate(DecodingData data) {
    return AgendaControllerState(events: data.dec(_f$events));
  }

  @override
  final Function instantiate = _instantiate;

  static AgendaControllerState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AgendaControllerState>(map);
  }

  static AgendaControllerState fromJson(String json) {
    return ensureInitialized().decodeJson<AgendaControllerState>(json);
  }
}

mixin AgendaControllerStateMappable {
  String toJson() {
    return AgendaControllerStateMapper.ensureInitialized()
        .encodeJson<AgendaControllerState>(this as AgendaControllerState);
  }

  Map<String, dynamic> toMap() {
    return AgendaControllerStateMapper.ensureInitialized()
        .encodeMap<AgendaControllerState>(this as AgendaControllerState);
  }

  AgendaControllerStateCopyWith<AgendaControllerState, AgendaControllerState,
          AgendaControllerState>
      get copyWith => _AgendaControllerStateCopyWithImpl(
          this as AgendaControllerState, $identity, $identity);
  @override
  String toString() {
    return AgendaControllerStateMapper.ensureInitialized()
        .stringifyValue(this as AgendaControllerState);
  }

  @override
  bool operator ==(Object other) {
    return AgendaControllerStateMapper.ensureInitialized()
        .equalsValue(this as AgendaControllerState, other);
  }

  @override
  int get hashCode {
    return AgendaControllerStateMapper.ensureInitialized()
        .hashValue(this as AgendaControllerState);
  }
}

extension AgendaControllerStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AgendaControllerState, $Out> {
  AgendaControllerStateCopyWith<$R, AgendaControllerState, $Out>
      get $asAgendaControllerState =>
          $base.as((v, t, t2) => _AgendaControllerStateCopyWithImpl(v, t, t2));
}

abstract class AgendaControllerStateCopyWith<
    $R,
    $In extends AgendaControllerState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  EventsCopyWith<$R, Events, Events>? get events;
  $R call({Events? events});
  AgendaControllerStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AgendaControllerStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AgendaControllerState, $Out>
    implements AgendaControllerStateCopyWith<$R, AgendaControllerState, $Out> {
  _AgendaControllerStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AgendaControllerState> $mapper =
      AgendaControllerStateMapper.ensureInitialized();
  @override
  EventsCopyWith<$R, Events, Events>? get events =>
      $value.events?.copyWith.$chain((v) => call(events: v));
  @override
  $R call({Object? events = $none}) =>
      $apply(FieldCopyWithData({if (events != $none) #events: events}));
  @override
  AgendaControllerState $make(CopyWithData data) =>
      AgendaControllerState(events: data.get(#events, or: $value.events));

  @override
  AgendaControllerStateCopyWith<$R2, AgendaControllerState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AgendaControllerStateCopyWithImpl($value, $cast, t);
}
