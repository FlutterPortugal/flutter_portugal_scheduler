import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_portugal_scheduler/data.dart';

part 'agenda_controller_state.mapper.dart';

@MappableClass()
final class AgendaControllerState with AgendaControllerStateMappable {
  final Events? events;

  AgendaControllerState({required this.events});
}
