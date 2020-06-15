extension DateTimePrinter on DateTime {
  String toStringOnlyDate() {
    return '$year-$month-$day';
  }

  String toStringOnlyTime() {
    return '${hour < 10 ? '0' + hour.toString() : hour}:${minute < 10 ? '0' + minute.toString() : minute}';
  }

  String toStringRus() {
    return '${day < 10 ? '0' + day.toString() : day}.${month < 10 ? '0' + month.toString() : month}.$year';
  }
}

extension DurationPrinter on Duration {
  String toStringOnlyHM() {
    return (inHours > 0 ? '$inHoursч ' : '') + '${inMinutes % 60}мин';
  }
}