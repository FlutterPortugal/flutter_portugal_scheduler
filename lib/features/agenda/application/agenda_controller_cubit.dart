import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portugal_scheduler/features/agenda/application/agenda_controller_state.dart';
import 'package:flutter_portugal_scheduler/features/agenda/data/events_repository.dart';

class AgendaControllerCubit extends Cubit<AgendaControllerState> {
  final AgendaRepository _eventsRepository;

  AgendaControllerCubit({
    required AgendaRepository eventsRepository,
  })  : _eventsRepository = eventsRepository,
        super(AgendaControllerState(agenda: null));

  Future<void> loadEvents() async {
    final events = await _eventsRepository.loadAgenda();
    emit(state.copyWith(agenda: events));
  }
}
