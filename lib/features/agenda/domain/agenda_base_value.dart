/// Base class for all events in the agenda
sealed class AgendaBaseValue {
  final String title;
  final String description;
  final String time;

  AgendaBaseValue({
    required this.title,
    required this.description,
    required this.time,
  });
}

/// A break in the agenda
class AgendaBreakValue extends AgendaBaseValue {
  AgendaBreakValue({
    required super.title,
    required super.description,
    required super.time,
  });
}

/// A talk in the agenda
class AgendaTalkValue extends AgendaBaseValue {
  final String speaker;

  AgendaTalkValue({
    String? speaker,
    required super.title,
    required super.description,
    required super.time,
  })  : assert(speaker != null, 'Speaker is required'),
        speaker = speaker ?? 'Unknown';
}
