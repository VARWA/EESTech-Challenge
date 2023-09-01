part of 'events_screen_bloc.dart';

@freezed
class EventsScreenEvent with _$EventsScreenEvent {
  const factory EventsScreenEvent.started() = Started;
  const factory EventsScreenEvent.getEvents() = GetEvents;
}
