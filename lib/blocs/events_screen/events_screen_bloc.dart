import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eestech_challenge_app/config/service_locator.dart';
import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/domain/repositories/events_repository.dart';
import 'package:equatable/equatable.dart';

part 'events_screen_event.dart';

part 'events_screen_state.dart';

class EventsScreenBloc extends Bloc<EventsScreenEvent, EventsScreenState> {
  EventsScreenBloc() : super(EventsScreenInitialState()) {
    on<EventsScreenGetEventsEvent>(eventsScreenGetEventsEvent);
  }

  FutureOr<void> eventsScreenGetEventsEvent(
      EventsScreenGetEventsEvent event, Emitter<EventsScreenState> emit) async {
    try {
      emit(EventsScreenLoadingState());
      List<Event> events = serviceLocator<EventsRepository>().getEvents();
      emit(EventsScreenGetEventsSuccessState(events));
    } catch (e) {
      emit(EventsScreenErrorState('Something Went Wrong: $e'));
    }
  }
}
