import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portugal_scheduler/features/agenda/application/agenda_controller_cubit.dart';
import 'package:flutter_portugal_scheduler/features/agenda/application/agenda_controller_state.dart';
import 'package:flutter_portugal_scheduler/features/agenda/data/events_repository.dart';
import 'package:flutter_portugal_scheduler/features/agenda/domain/agenda_base_value.dart';

class AgendaListView extends StatelessWidget {
  const AgendaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgendaControllerCubit, AgendaControllerState>(
      bloc: AgendaControllerCubit(eventsRepository: AgendaRepository())
        ..loadEvents(),
      builder: (context, state) {
        if (state.agenda == null) {
          return const Center(
            child: Text('No events'),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
            itemCount: state.agenda?.length ?? 0,
            itemBuilder: (context, index) {
              final agendaItem = state.agenda![index];

              return switch (agendaItem) {
                // TALK
                AgendaTalkValue(speaker: _) => ListTile(
                    tileColor: Theme.of(context).colorScheme.primaryContainer,
                    leading: Text(
                      agendaItem.time,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    subtitle: Text(
                      agendaItem.description,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    title: Text(
                      agendaItem.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    trailing: Text(
                      agendaItem.speaker,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),

                // BREAK
                AgendaBreakValue() => ListTile(
                    leading: Text(
                      agendaItem.time,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    subtitle: Text(
                      agendaItem.description,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    title: Text(
                      agendaItem.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
              };
            },
          ),
        );
      },
    );
  }
}
