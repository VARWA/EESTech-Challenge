import 'dart:ui';

class EventExampleList {
  final List<Event> eventsExampleList = [
    Event(id: 0,
        title: "Знакомство с коллективом",
        date: '12.04.23',
        points: 5,
        place: 'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Познакомьтемь с коллективом, погладьте котиков, попейте кофея',
        startTime: '18:00',
        endTime: '21:00',
    photo: "а"),
    Event(id: 1,
        title: "Знакомство с коллегами",
        date: '13.04.23',
        points: 3,
        place: 'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Познакомьтемь с коллективом, погладьте котиков, попейте кофея',
        startTime: '17:00',
        endTime: '20:00',
    photo: "м"),
  ];
  List<Event> get eventsExample => eventsExampleList;
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
  Object photo;

  Event({required this.id, required this.title, required this.date,
    required this.points, required this.place, required this.description,
    required this.startTime, required this.endTime, required this.photo});
}