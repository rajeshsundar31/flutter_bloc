import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/config_bloc.dart';
import 'package:todo_app/cubit/auth_cubit.dart';



class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key, required this.title});

  final String title;

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {

  final globalcon = ConfigBloc();

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
            title: Text(widget.title),
          ),
          body: BlocBuilder<ConfigBloc, ConfigState>(
          builder: (context, state) {
            if( state is ConfigFailure){
              return Center(
                child: Text(state.error),
              );
            };

            if ( state is ConfigSuccess){

            }
          },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // counterCubit.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }
  }