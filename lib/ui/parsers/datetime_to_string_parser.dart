import 'package:intl/intl.dart';

abstract class DateTimeToStringParser {
  static dateTimeToStringDate({required DateTime dateTime}) =>
      DateFormat('dd.MM.yyyy').format(dateTime);

  static String dateTimesToStringPeriod({
    required DateTime dateTime1,
    required DateTime dateTime2,
  }) =>
      '${dateTimeToStringDate(dateTime: dateTime1)}-${dateTimeToStringDate(dateTime: dateTime2)}';
}
