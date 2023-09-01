import 'package:bloc/bloc.dart';
import 'package:eestech_challenge_app/config/service_locator.dart';
import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/domain/repositories/events_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_screen_bloc.freezed.dart';
part 'events_screen_event.dart';
part 'events_screen_state.dart';

class EventsScreenBloc extends Bloc<EventsScreenEvent, EventsScreenState> {
  EventsScreenBloc() : super(const EventsScreenState.initial()) {
    on<GetEvents>(_getEvents);
  }
  _getEvents(event, emit) {
    try {
      emit(const EventsScreenState.loading());
      List<Event> events = serviceLocator<EventsRepository>().getEvents();
      emit(EventsScreenState.loaded(events));
    } catch (e) {
      emit(EventsScreenState.error(e.toString()));
    }
  }
}
