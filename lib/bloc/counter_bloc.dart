import 'dart:async';

import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}
class Add10Event extends CounterEvent {}
class DecrementEvent extends CounterEvent {}
class Subtract10Event extends CounterEvent {}

class CounterState {
  int value;
  String title;

  CounterState(this.title,this.value);
}
class CounterBloc extends Bloc<CounterEvent, CounterState>{

  @override
  // TODO: implement initialState
  CounterState get initialState => CounterState("klikacz", 0);

  @override
  Stream<CounterState> mapEventToState(event) async* {
    
    if(event is IncrementEvent) {
      int newValue = state.value+1;
      yield CounterState(state.title,newValue);
    }else if(event is Add10Event) {
      int newValue = state.value+10;
      yield CounterState(state.title,newValue);
    }else if(event is DecrementEvent) {
      int newValue = state.value-1;
      yield CounterState(state.title,newValue);
    }else if(event is Subtract10Event) {
      int newValue = state.value-10;
      yield CounterState(state.title,newValue);
    }
  }

} 