class _EventExampleList {
  List<Event> eventsExampleList = [
    Event(id: 0,
        title: "Знакомство с коллективом",
        date: '12.04.23',
        points: 5,
        place: 'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Познакомьтемь с коллективом, погладьте котиков, попейте кофея',
        startTime: '18:00',
        endTime: '21:00'),
    //todo 7 examples

  ];
}

class Event {
  int id;
  String title;
  String date;
  int points;
  String place;
  String description;
  String startTime;
  String endTime;

  Event({required this.id, required this.title, required this.date,
    required this.points, required this.place, required this.description,
    required this.startTime, required this.endTime})


}