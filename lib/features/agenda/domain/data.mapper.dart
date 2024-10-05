// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'data.dart';

class EventsMapper extends ClassMapperBase<Events> {
  EventsMapper._();

  static EventsMapper? _instance;
  static EventsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EventsMapper._());
      EventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Events';

  static List<Event> _$events(Events v) => v.events;
  static const Field<Events, List<Event>> _f$events = Field('events', _$events);

  @override
  final MappableFields<Events> fields = const {
    #events: _f$events,
  };

  static Events _instantiate(DecodingData data) {
    return Events(events: data.dec(_f$events));
  }

  @override
  final Function instantiate = _instantiate;

  static Events fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Events>(map);
  }

  static Events fromJson(String json) {
    return ensureInitialized().decodeJson<Events>(json);
  }
}

mixin EventsMappable {
  String toJson() {
    return EventsMapper.ensureInitialized().encodeJson<Events>(this as Events);
  }

  Map<String, dynamic> toMap() {
    return EventsMapper.ensureInitialized().encodeMap<Events>(this as Events);
  }

  EventsCopyWith<Events, Events, Events> get copyWith =>
      _EventsCopyWithImpl(this as Events, $identity, $identity);
  @override
  String toString() {
    return EventsMapper.ensureInitialized().stringifyValue(this as Events);
  }

  @override
  bool operator ==(Object other) {
    return EventsMapper.ensureInitialized().equalsValue(this as Events, other);
  }

  @override
  int get hashCode {
    return EventsMapper.ensureInitialized().hashValue(this as Events);
  }
}

extension EventsValueCopy<$R, $Out> on ObjectCopyWith<$R, Events, $Out> {
  EventsCopyWith<$R, Events, $Out> get $asEvents =>
      $base.as((v, t, t2) => _EventsCopyWithImpl(v, t, t2));
}

abstract class EventsCopyWith<$R, $In extends Events, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Event, EventCopyWith<$R, Event, Event>> get events;
  $R call({List<Event>? events});
  EventsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EventsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Events, $Out>
    implements EventsCopyWith<$R, Events, $Out> {
  _EventsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Events> $mapper = EventsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Event, EventCopyWith<$R, Event, Event>> get events =>
      ListCopyWith($value.events, (v, t) => v.copyWith.$chain(t),
          (v) => call(events: v));
  @override
  $R call({List<Event>? events}) =>
      $apply(FieldCopyWithData({if (events != null) #events: events}));
  @override
  Events $make(CopyWithData data) =>
      Events(events: data.get(#events, or: $value.events));

  @override
  EventsCopyWith<$R2, Events, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EventsCopyWithImpl($value, $cast, t);
}

class EventMapper extends ClassMapperBase<Event> {
  EventMapper._();

  static EventMapper? _instance;
  static EventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Event';

  static String _$speaker(Event v) => v.speaker;
  static const Field<Event, String> _f$speaker = Field('speaker', _$speaker);
  static String _$description(Event v) => v.description;
  static const Field<Event, String> _f$description =
      Field('description', _$description);
  static String _$title(Event v) => v.title;
  static const Field<Event, String> _f$title = Field('title', _$title);
  static DateTime _$time(Event v) => v.time;
  static const Field<Event, DateTime> _f$time = Field('time', _$time);

  @override
  final MappableFields<Event> fields = const {
    #speaker: _f$speaker,
    #description: _f$description,
    #title: _f$title,
    #time: _f$time,
  };

  static Event _instantiate(DecodingData data) {
    return Event(
        speaker: data.dec(_f$speaker),
        description: data.dec(_f$description),
        title: data.dec(_f$title),
        time: data.dec(_f$time));
  }

  @override
  final Function instantiate = _instantiate;

  static Event fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Event>(map);
  }

  static Event fromJson(String json) {
    return ensureInitialized().decodeJson<Event>(json);
  }
}

mixin EventMappable {
  String toJson() {
    return EventMapper.ensureInitialized().encodeJson<Event>(this as Event);
  }

  Map<String, dynamic> toMap() {
    return EventMapper.ensureInitialized().encodeMap<Event>(this as Event);
  }

  EventCopyWith<Event, Event, Event> get copyWith =>
      _EventCopyWithImpl(this as Event, $identity, $identity);
  @override
  String toString() {
    return EventMapper.ensureInitialized().stringifyValue(this as Event);
  }

  @override
  bool operator ==(Object other) {
    return EventMapper.ensureInitialized().equalsValue(this as Event, other);
  }

  @override
  int get hashCode {
    return EventMapper.ensureInitialized().hashValue(this as Event);
  }
}

extension EventValueCopy<$R, $Out> on ObjectCopyWith<$R, Event, $Out> {
  EventCopyWith<$R, Event, $Out> get $asEvent =>
      $base.as((v, t, t2) => _EventCopyWithImpl(v, t, t2));
}

abstract class EventCopyWith<$R, $In extends Event, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? speaker, String? description, String? title, DateTime? time});
  EventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EventCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Event, $Out>
    implements EventCopyWith<$R, Event, $Out> {
  _EventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Event> $mapper = EventMapper.ensureInitialized();
  @override
  $R call(
          {String? speaker,
          String? description,
          String? title,
          DateTime? time}) =>
      $apply(FieldCopyWithData({
        if (speaker != null) #speaker: speaker,
        if (description != null) #description: description,
        if (title != null) #title: title,
        if (time != null) #time: time
      }));
  @override
  Event $make(CopyWithData data) => Event(
      speaker: data.get(#speaker, or: $value.speaker),
      description: data.get(#description, or: $value.description),
      title: data.get(#title, or: $value.title),
      time: data.get(#time, or: $value.time));

  @override
  EventCopyWith<$R2, Event, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EventCopyWithImpl($value, $cast, t);
}
