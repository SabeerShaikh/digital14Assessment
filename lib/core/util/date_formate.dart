import 'package:intl/intl.dart';

class DateFormater {
  static String dateConversion(String date) {
    DateTime tempDate = DateFormat("yyyy-MM-dd'T'hh:mm:ss").parse(date);
    String newDate = DateFormat('EEEE, d MMM yyyy hh:mm:a').format(tempDate);
    return newDate;
  }
}
