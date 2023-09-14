import 'package:beheer_task_manager/util/helper/date/date_helper.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  Rx<DateTime> today = DateTime.now().obs;
  Rx<DateTime> firstDate = DateTime.now().obs;
  Rx<DateTime> selectionDate = DateTime.now().obs;

  bool isSelectDay(DateTime date) =>
      DateHelper.normalDate(date: selectionDate.value) ==
      DateHelper.normalDate(date: date);
  bool isToday(DateTime date) =>
      DateHelper.normalDate(date: today.value) ==
      DateHelper.normalDate(date: date);

  selectedDate(DateTime date) {
    selectionDate.value = date;
  }

  RxString section = "schedule".obs;

  bool isScheduleSection(String value) => section.value == value;

  selectSection(String value) => section.value = value;
}
