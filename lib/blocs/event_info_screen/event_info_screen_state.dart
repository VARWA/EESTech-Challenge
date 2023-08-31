part of 'event_info_screen_bloc.dart';

@freezed
class EventInfoScreenState with _$EventInfoScreenState {
  const factory EventInfoScreenState.initial() = Initial;
  const factory EventInfoScreenState.loading() = Loading;
  const factory EventInfoScreenState.loaded(Event event) = Loaded;
  const factory EventInfoScreenState.unknownPage() = UnknownPage;

}
