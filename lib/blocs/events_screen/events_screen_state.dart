part of 'events_screen_bloc.dart';

@freezed
class EventsScreenState with _$EventsScreenState {
  const factory EventsScreenState.initial() = Initial;
  const factory EventsScreenState.loading() = Loading;
  const factory EventsScreenState.loaded(List<Event> events) = Loaded;
  const factory EventsScreenState.error(String message) = Error;
}
