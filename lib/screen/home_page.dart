import 'package:bloc_tutorial/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => context.read<CounterBloc>().add(Increment()),
                child: const Text("increment")),
            const Gap(20),
            BlocBuilder<CounterBloc, CounterState>(
                builder: (BuildContext context, state) =>
                    Text(state.count.toString())),
            const Gap(20),
            ElevatedButton(
                onPressed: () => context.read<CounterBloc>().add(Decrement()),
                child: const Text("decrement")),
          ],
        ),
      ),
    );
  }
}
