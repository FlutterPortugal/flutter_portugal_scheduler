import 'package:flutter/material.dart';
import 'package:flutter_portugal_scheduler/features/agenda/presentation/agenda_list_view.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Portugal Agenda',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: const AgendaListView(),
    );
  }
}
