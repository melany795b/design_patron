// Archivo: lib/main.dart

import 'package:design_patron/view/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/counter_viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }
}
