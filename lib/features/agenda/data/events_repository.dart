import 'package:flutter/services.dart';
import 'package:flutter_portugal_scheduler/features/agenda/domain/agenda_base_value.dart';
import 'package:flutter_portugal_scheduler/features/agenda/domain/events.dart';
import 'package:intl/intl.dart';

class AgendaRepository {
  Future<List<AgendaBaseValue>> loadAgenda() async {
    final json = await _loadJson();
    final events = EventsMapper.fromJson(json);

    return events.events.map((event) {
      final dateFormat = DateFormat('HH:mm');
      return switch (event.typeId) {
        0 => AgendaBreakValue(
            title: event.title,
            description: event.description,
            time: dateFormat.format(event.time),
          ),
        1 => AgendaTalkValue(
            title: event.title,
            description: event.description,
            time: dateFormat.format(event.time),
            speaker: event.speaker,
          ),
        _ => throw Exception('Invalid event type'),
      };
    }).toList();
  }
}

// New method to load JSON from a file
Future<String> _loadJson() async {
  final String response =
      await rootBundle.loadString('assets/agenda.json'); // Load JSON file
  return response; // Decode JSON
}
