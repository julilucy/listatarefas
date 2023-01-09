import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:listatarefas/src/control/homecontroller.dart';
import 'package:listatarefas/src/view/homepage.dart';

void main() {
  final getIt = GetIt.instance;

  getIt.registerSingleton(HomeController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}
