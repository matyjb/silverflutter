import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silverflutter/bloc/counter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc,CounterState>(
      builder: (context, state) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.add_circle),onPressed: (){},),
            IconButton(icon: Icon(Icons.add),onPressed: (){},),
            Text(state.value.toString()),
            IconButton(icon: Icon(Icons.remove),onPressed: (){},),
            IconButton(icon: Icon(Icons.remove_circle),onPressed: (){},),
          ],
        ),
      ),
    );
  }
}