part of 'events_screen_bloc.dart';

abstract class EventsScreenEvent extends Equatable {
  const EventsScreenEvent();

  @override
  List<Object?> get props => [];
}

class EventsScreenGetEventsEvent extends EventsScreenEvent {}
