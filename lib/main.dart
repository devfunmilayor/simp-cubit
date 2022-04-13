import 'package:bloc_pattern/ui/cubit/counterCubit/counterEvent.dart';
import 'package:bloc_pattern/ui/cubit/counterCubit/counterState.dart';
import 'package:bloc_pattern/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            lazy: false,
            create: (BuildContext context) => CounterCubit(CounterCubitInitial),
          ),
        ],
        child: const MyHomePage(),
      ),
    );
  }
}
