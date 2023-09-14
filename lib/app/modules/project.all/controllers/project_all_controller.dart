import 'package:get/get.dart';

class ProjectAllController extends GetxController {
  List<String> listStatus = [
    "Discussion",
    "In Progress",
    "Completed",
    "Cancelled",
  ];

  RxString selectStatus = "".obs;

  onSelectStatus(String status) => selectStatus.value = status;

  bool isSelectedStatus(String status) => selectStatus.value == status;
}
