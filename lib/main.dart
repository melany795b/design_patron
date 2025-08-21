import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/screen/main_screen.dart';
import 'viewmodel/counter_viewmodel.dart';
import 'viewmodel/counter_viewmodel_two.dart'; // 👈 importa el segundo ViewModel

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()), // para motos
        ChangeNotifierProvider(
          create: (_) => CounterViewModelTwo(),
        ), // para users
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        actionIconTheme: const ActionIconThemeData(),
      ),
      home: const MainScreen(),
    );
  }
}
