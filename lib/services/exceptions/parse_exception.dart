class ParseException implements Exception {

  final String message;

  ParseException(this.message);
}

class StationNotFoundException extends ParseException {
  StationNotFoundException() : super("Станция не найдена");
}

class TooShortException extends ParseException {
  TooShortException() : super("Наберите не менее трех букв");
}

class UnknownParseException extends ParseException {
  UnknownParseException() : super("Неизвестная ошибка");
}