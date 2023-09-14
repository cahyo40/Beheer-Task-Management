import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class ProfilePremiumPlanController extends GetxController {
  List<Map<String, dynamic>> listItemFacility = [
    {
      "title": "Unlimited File Uploads",
      "subtitle": "Unlimited upload files any size no limits",
      "icon": UniconsLine.file_upload_alt,
    },
    {
      "title": "Unlimited Team Members",
      "subtitle":
          "Invite team member to individual projects for private collaboration",
      "icon": UniconsLine.users_alt,
    },
    {
      "title": "Unlimited Project",
      "subtitle": "Unlimited create project",
      "icon": UniconsLine.users_alt,
    },
  ];
}
