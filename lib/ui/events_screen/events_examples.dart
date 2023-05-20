class EventExampleList {
  final List<Event> eventsExampleList = [
    Event(
        id: 0,
        title: "Знакомство с офисом",
        startDate: '12.04.23',
        endDate: '14.05.23',
        points: 450,
        place:
            'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description:
            'Познакомьтемь с коллективом, погладьте котиков',
        startTime: '18:00',
        endTime: '21:00',
        photo: "а", bonuses: 'Премия 50000'),
    Event(
        id: 1,
        title: "Лучший мем",
        startDate: '13.04.20',
        endDate: '17.04.20',
        points: 300,
        place:
            'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description:
            'Как же жить без юмора?',
        startTime: '17:00',
        endTime: '20:00',
        photo: "м", bonuses: 'Бесплатные обеды две недели'),
    Event(
        id: 2,
        title: "Конкурс фото",
        startDate: '9.04.23',
        endDate: '10.06.23',
        points: 100,
        place:
        'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description:
        'Как же жить без юиора?',
        startTime: '10:00',
        endTime: '17:40',
        photo: "", bonuses: 'Аренда студии на два часа'),
    Event(
        id: 3,
        title: "Конкурс фото 2",
        startDate: '9.04.22',
        endDate: '10.04.22',
        points: 100,
        place:
        'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description:
        'Как же жеть без юиора?',
        startTime: '10:00',
        endTime: '17:40',
        photo: "", bonuses: 'Аренда студии на два часа'),
  ];

  List<Event> get eventsExample => eventsExampleList;
}

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
