import 'package:eestech_challenge_app/domain/models/event_model.dart';

abstract class EventExampleList {
  static List<Event> eventsExampleList = [
    Event(
        id: '0',
        title: "Знакомство с офисом",
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        linkToPhoto: 'https://runetsoft.ru/images/ideas-tech/15years.png',
        points: 450,
        place:
            'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Познакомьтеcь с коллективом, погладьте котиков',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        bonuses: 'Премия 50000',
        fullDescription:
            '''Для конкурса “Прорыв месяца” в рейтинге по знанию компании, участники должны продемонстрировать свои знания в определённой области, связанной с бизнесом компании. Участники будут оцениваться по их способности решать задачи и проблемы, связанные с этой областью, а также по их знанию ключевых понятий и терминов.

Для участия в конкурсе участники должны представить проект или исследование, которое продемонстрирует их знания и умения. Проекты могут быть связаны с различными областями бизнеса, включая маркетинг, управление персоналом и т.д.

Оценка участников будет основана на критериях, таких как оригинальность идеи, качество анализа данных, глубина знаний и практическое применение результатов исследования. Победитель будет объявлен на основе суммы баллов, полученных по каждому критерию.

Конкурс “Прорыв месяца” представляет собой отличную возможность для участников продемонстрировать свои знания и умения, а также получить признание и поощрение от компании.''',
        rules: 'Уточняйте у организаторов'),
    Event(
        id: '1',
        title: "Лучший мем",
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        points: 300,
        place:
            'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Как же жить без юмора?',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        bonuses: 'Бесплатные обеды две недели'),
    Event(
        id: '2',
        title: "Конкурс фото",
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        points: 100,
        place:
            'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Как же жить без юиора?',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        bonuses: 'Аренда студии на два часа'),
    Event(
        id: '3',
        title: "Конкурс фото 2",
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        points: 100,
        place:
            'Октябрьская набережная, дом 10, корпус 1, строение 1, помещение 9-Н, Санкт-Петербург',
        description: 'Как же жеть без юмора?',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
        bonuses: 'Аренда студии на два часа',),
  ];

  List<Event> get eventsExample => eventsExampleList;
}
