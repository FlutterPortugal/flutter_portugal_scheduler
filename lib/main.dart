import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portugal_scheduler/agenda_controller_cubit.dart';
import 'package:flutter_portugal_scheduler/agenda_page.dart';
import 'package:flutter_portugal_scheduler/data_repository.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AgendaControllerCubit(
      dataRepository: DataRepository(),
    ),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AgendaPage(),
    );
  }
}
