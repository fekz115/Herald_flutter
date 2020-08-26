import 'package:Herald_flutter/i18n.dart';

class ParseException implements Exception {

  final Keys message;

  ParseException(this.message);
}

class StationNotFoundException extends ParseException {
  StationNotFoundException() : super(Keys.ERROR_STATION_NOT_FOUND);
}

class TooShortException extends ParseException {
  TooShortException() : super(Keys.ERROR_TOO_SHORT);
}

class UnknownParseException extends ParseException {
  final String content;
  UnknownParseException(this.content) : super(Keys.ERROR_UNKNOWN);

  @override
  String toString() {
    return 'UnknownParseException{content: $content}';
  }
}

class NoDirectPathException extends ParseException {
  NoDirectPathException() : super(Keys.ERROR_NO_DIRECT_PATH);
}