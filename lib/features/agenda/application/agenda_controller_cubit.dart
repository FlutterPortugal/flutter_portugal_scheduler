import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portugal_scheduler/features/agenda/application/agenda_controller_state.dart';
import 'package:flutter_portugal_scheduler/features/agenda/data/events_repository.dart';

class AgendaControllerCubit extends Cubit<AgendaControllerState> {
  final EventsRepository _eventsRepository;

  AgendaControllerCubit({
    required EventsRepository eventsRepository,
  })  : _eventsRepository = eventsRepository,
        super(AgendaControllerState(events: null));

  Future<void> loadEvents() async {
    final events = await _eventsRepository.loadEvents();
    emit(state.copyWith(events: events));
  }
}
