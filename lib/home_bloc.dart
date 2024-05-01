import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/counter_bloc.dart';



class MyHomeBloc extends StatefulWidget {
  const MyHomeBloc({super.key, required this.title});

  final String title;

  @override
  State<MyHomeBloc> createState() => _MyHomeBlocState();
}

class _MyHomeBlocState extends State<MyHomeBloc> {

  

  @override
  Widget build(BuildContext context) {
  final counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<CounterBloc, int>(
      bloc: counterBloc,
      builder: (context, counter) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times in Bloc:',
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterIncrementedEvent());
              // counterCubit.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterDecrementEvent());
              // counterCubit.increment();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize_outlined),
          ),
        );
      }
    );
  }
}