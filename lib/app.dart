import 'package:flutter/material.dart';
import 'package:flutter_portugal_scheduler/features/agenda/presentation/agenda_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const AgendaPage(),
    );
  }
}
