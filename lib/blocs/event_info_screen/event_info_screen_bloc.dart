import 'package:bloc/bloc.dart';
import 'package:eestech_challenge_app/config/service_locator.dart';
import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/domain/repositories/events_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_info_screen_bloc.freezed.dart';

part 'event_info_screen_event.dart';

part 'event_info_screen_state.dart';

class EventInfoScreenBloc
    extends Bloc<EventInfoScreenEvent, EventInfoScreenState> {
  EventInfoScreenBloc() : super(const EventInfoScreenState.initial()) {
    on<EventInfoScreenEventGetInfoEvent>(_eventInfoScreenGetInfoEvent);
  }

  _eventInfoScreenGetInfoEvent(event, emit) {
    emit(const EventInfoScreenState.loading());
    Event? gotEvent =
        serviceLocator<EventsRepository>().getEventInfo(id: event.eventId);
    gotEvent != null
        ? emit(EventInfoScreenState.loaded(gotEvent))
        : emit(const UnknownPage());
  }
}
