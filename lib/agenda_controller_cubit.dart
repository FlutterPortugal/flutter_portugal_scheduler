import 'package:bloc/bloc.dart';
import 'package:flutter_portugal_scheduler/agenda_controller_state.dart';
import 'package:flutter_portugal_scheduler/data_repository.dart';

class AgendaControllerCubit extends Cubit<AgendaControllerState> {
  final DataRepository _dataRepository;

  AgendaControllerCubit({
    required DataRepository dataRepository,
  })  : _dataRepository = dataRepository,
        super(AgendaControllerState(events: null));

  Future<void> loadEvents() async {
    final events = await _dataRepository.loadEvents();
    emit(state.copyWith(events: events));
  }
}
