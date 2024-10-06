import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_portugal_scheduler/features/agenda/domain/agenda_base_value.dart';

part 'agenda_controller_state.mapper.dart';

@MappableClass()
final class AgendaControllerState with AgendaControllerStateMappable {
  final List<AgendaBaseValue>? agenda;

  AgendaControllerState({required this.agenda});
}
