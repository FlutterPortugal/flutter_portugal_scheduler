import 'package:flutter/services.dart';
import 'package:flutter_portugal_scheduler/data.dart';

class DataRepository {
  Future<Events> loadEvents() async {
    final json = await loadJson();
    final events = EventsMapper.fromJson(json);
    return events;
  }
}

// New method to load JSON from a file
Future<String> loadJson() async {
  final String response =
      await rootBundle.loadString('assets/data.json'); // Load JSON file
  return response; // Decode JSON
}
