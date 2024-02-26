import 'package:bloc_tutorial/bloc/counter_bloc.dart';
import 'package:bloc_tutorial/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(),
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
