import 'package:intl/intl.dart';

class DateHelper {
  static String monthYearSmall({required DateTime date}) {
    return DateFormat("MMMM yyyy").format(date);
  }

  static String monthSmall({required DateTime date}) {
    return DateFormat("MMM").format(date);
  }

  static String dayNum({required DateTime date}) {
    return DateFormat("d").format(date);
  }

  static String normalDate({required DateTime date}) {
    return DateFormat("d MMMM yyyy").format(date);
  }

  static String custom({required String format, required DateTime date}) {
    return DateFormat(format).format(date);
  }
}
