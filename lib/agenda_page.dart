import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portugal_scheduler/agenda_controller_cubit.dart';
import 'package:flutter_portugal_scheduler/agenda_controller_state.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Portugal Agenda'),
      ),
      body: const AgendaListView(),
    );
  }
}

class AgendaListView extends StatelessWidget {
  const AgendaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgendaControllerCubit, AgendaControllerState>(
      builder: (context, state) {
        if (state.events == null) {
          return const Center(
            child: Text('No events'),
          );
        }
        return ListView.builder(
          itemCount: state.events!.events.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.events!.events[index].speaker),
            );
          },
        );
      },
    );
  }
}
