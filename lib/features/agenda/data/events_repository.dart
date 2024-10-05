import 'package:flutter/services.dart';
import 'package:flutter_portugal_scheduler/features/agenda/domain/data.dart';

class EventsRepository {
  Future<Events> loadEvents() async {
    final json = await _loadJson();
    final events = EventsMapper.fromJson(json);
    return events;
  }
}

// New method to load JSON from a file
Future<String> _loadJson() async {
  final String response =
      await rootBundle.loadString('assets/events.json'); // Load JSON file
  return response; // Decode JSON
}
