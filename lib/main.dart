import 'package:flutter/material.dart';
import 'package:silverflutter/bloc/counter_bloc.dart';
import 'package:silverflutter/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      builder: (context) => CounterBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Pierwsze zajęcia!"),
          ),
          body: Counter(),
        ),
      ),
    );
  }
}