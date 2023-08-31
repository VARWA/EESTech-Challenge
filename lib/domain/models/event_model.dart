import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';

@freezed
class Event with _$Event {
  factory Event({
    required int id,
    required String title,
    required DateTime? startDate,
    required DateTime? endDate,
    required int points,
    required String place,
    required String description,
    required DateTime startTime,
    required DateTime endTime,
    required Object photo,
    required String bonuses,
    @Default('') String fullDescription,
    @Default('') String rules,
  }) = _Event;
}
