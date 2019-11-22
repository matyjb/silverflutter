import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silverflutter/bloc/counter_bloc.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    // return BlocBuilder<CounterBloc, CounterState>(
    //   builder: (context, state) =>
       return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () => counterBloc.add(Add10Event()),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => counterBloc.add(IncrementEvent()),
            ),
            Text(counterBloc.state.value.toString()),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () => counterBloc.add(DecrementEvent()),
            ),
            IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () => counterBloc.add(Subtract10Event()),
            ),
          ],
        ),
      // ),
    );
  }
}
