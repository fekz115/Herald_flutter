extension DateTimePrinter on DateTime {
  String toStringOnlyDate() {
    return '${this.year}-${this.month}-${this.day}';
  }
}