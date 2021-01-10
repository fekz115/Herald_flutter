import 'package:Herald/i18n.dart';

class ParseException implements Exception {
  ParseException({
    this.message,
  });

  final Keys message;
}

class StationNotFoundException extends ParseException {
  StationNotFoundException() : super(message: Keys.ERROR_STATION_NOT_FOUND);
}

class TooShortException extends ParseException {
  TooShortException() : super(message: Keys.ERROR_TOO_SHORT);
}

class UnknownParseException extends ParseException {
  UnknownParseException({this.content,}) : super(message: Keys.ERROR_UNKNOWN);

  final String content;

  @override
  String toString() {
    return 'UnknownParseException{content: $content}';
  }
}

class NoDirectPathException extends ParseException {
  NoDirectPathException() : super(message: Keys.ERROR_NO_DIRECT_PATH);
}
