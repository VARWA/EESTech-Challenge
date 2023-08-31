part of 'events_screen_bloc.dart';

abstract class EventsScreenState extends Equatable {
  @override
  List<Object> get props => [];
}

class EventsScreenInitialState extends EventsScreenState {}

class EventsScreenLoadingState extends EventsScreenState {}

class EventsScreenGetEventsSuccessState extends EventsScreenState {
  final List<Event> events;

  EventsScreenGetEventsSuccessState(this.events);

  @override
  List<Object> get props => [events];
}

class EventsScreenErrorState extends EventsScreenState {
  final String message;

  EventsScreenErrorState(this.message);

  @override
  List<Object> get props => [message];
}
