import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portugal_scheduler/features/agenda/application/agenda_controller_cubit.dart';
import 'package:flutter_portugal_scheduler/features/agenda/application/agenda_controller_state.dart';
import 'package:flutter_portugal_scheduler/features/agenda/data/events_repository.dart';
import 'package:intl/intl.dart';

class AgendaListView extends StatelessWidget {
  const AgendaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgendaControllerCubit, AgendaControllerState>(
      bloc: AgendaControllerCubit(eventsRepository: EventsRepository())
        ..loadEvents(),
      builder: (context, state) {
        if (state.events == null) {
          return const Center(
            child: Text('No events'),
          );
        }
        return ListView.builder(
          itemCount: state.events?.events.length ?? 0,
          itemBuilder: (context, index) {
            String formattedTime =
                DateFormat('HH:mm').format(state.events!.events[index].time);

            return ListTile(
              leading: Text(
                formattedTime,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: Text(
                state.events!.events[index].description,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              title: Text(
                state.events!.events[index].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              trailing: Text(
                state.events!.events[index].speaker,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            );
          },
        );
      },
    );
  }
}
