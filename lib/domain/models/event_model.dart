
class Event {
  int id;
  String title;
  String startDate;
  String endDate;
  int points;
  String place;
  String description;
  String startTime;
  String endTime;
  Object photo;
  String bonuses;

  Event(
      {required this.id,
        required this.title,
        required this.startDate,
        required this.endDate,
        required this.points,
        required this.place,
        required this.description,
        required this.startTime,
        required this.endTime,
        required this.photo,
        required this.bonuses});
}
