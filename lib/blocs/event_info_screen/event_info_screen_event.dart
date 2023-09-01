part of 'event_info_screen_bloc.dart';

@freezed
class EventInfoScreenEvent with _$EventInfoScreenEvent {
  const factory EventInfoScreenEvent.started() = Started;
  const factory EventInfoScreenEvent.getInfo({required int eventId}) =
      EventInfoScreenEventGetInfoEvent;
}
