import 'package:eestech_challenge_app/domain/repositories/events_repository.dart';
import 'package:eestech_challenge_app/domain/repositories/theory_repository.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setup() {
  serviceLocator.registerSingleton<EventsRepository>(EventsRepository());
  serviceLocator.registerSingleton<TheoryRepository>(TheoryRepository());
}
