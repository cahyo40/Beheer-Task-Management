import 'package:get/get.dart';

import '../modules/app.bottom.nav/bindings/app_bottom_nav_binding.dart';
import '../modules/app.bottom.nav/views/app_bottom_nav_view.dart';
import '../modules/app.drawer/bindings/app_drawer_binding.dart';
import '../modules/app.drawer/views/app_drawer_view.dart';
import '../modules/auth.forgot.password/bindings/auth_forgot_password_binding.dart';
import '../modules/auth.forgot.password/views/auth_forgot_password_view.dart';
import '../modules/auth.login/bindings/auth_login_binding.dart';
import '../modules/auth.login/views/auth_login_view.dart';
import '../modules/auth.register/bindings/auth_register_binding.dart';
import '../modules/auth.register/views/auth_register_view.dart';
import '../modules/calendar/bindings/calendar_binding.dart';
import '../modules/calendar/views/calendar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/profile.edit/bindings/profile_edit_binding.dart';
import '../modules/profile.edit/views/profile_edit_view.dart';
import '../modules/profile.premium.plan/bindings/profile_premium_plan_binding.dart';
import '../modules/profile.premium.plan/views/profile_premium_plan_view.dart';
import '../modules/profile.setting.change.password/bindings/profile_setting_change_password_binding.dart';
import '../modules/profile.setting.change.password/views/profile_setting_change_password_view.dart';
import '../modules/profile.setting/bindings/profile_setting_binding.dart';
import '../modules/profile.setting/views/profile_setting_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/project.all/bindings/project_all_binding.dart';
import '../modules/project.all/views/project_all_view.dart';
import '../modules/project.create/bindings/project_create_binding.dart';
import '../modules/project.create/views/project_create_view.dart';
import '../modules/project.detail/bindings/project_detail_binding.dart';
import '../modules/project.detail/views/project_detail_view.dart';
import '../modules/project.summary/bindings/project_summary_binding.dart';
import '../modules/project.summary/views/project_summary_view.dart';
import '../modules/schedule.create/bindings/schedule_create_binding.dart';
import '../modules/schedule.create/views/schedule_create_view.dart';
import '../modules/schedule.detail/bindings/schedule_detail_binding.dart';
import '../modules/schedule.detail/views/schedule_detail_view.dart';
import '../modules/task.create/bindings/task_create_binding.dart';
import '../modules/task.create/views/task_create_view.dart';
import '../modules/team.create/bindings/team_create_binding.dart';
import '../modules/team.create/views/team_create_view.dart';
import '../modules/team.detail/bindings/team_detail_binding.dart';
import '../modules/team.detail/views/team_detail_view.dart';
import '../modules/team.edit/bindings/team_edit_binding.dart';
import '../modules/team.edit/views/team_edit_view.dart';
import '../modules/team.join/bindings/team_join_binding.dart';
import '../modules/team.join/views/team_join_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      transition: Transition.fadeIn,
      bindings: [
        HomeBinding(),
        AppBottomNavBinding(),
        // AppDrawerBinding(),
      ],
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_LOGIN,
      page: () => const AuthLoginView(),
      binding: AuthLoginBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_REGISTER,
      page: () => const AuthRegisterView(),
      binding: AuthRegisterBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_FORGOT_PASSWORD,
      page: () => const AuthForgotPasswordView(),
      binding: AuthForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.TEAM_JOIN,
      page: () => const TeamJoinView(),
      binding: TeamJoinBinding(),
    ),
    GetPage(
      name: _Paths.TEAM_CREATE,
      page: () => const TeamCreateView(),
      binding: TeamCreateBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_DETAIL,
      page: () => const ScheduleDetailView(),
      binding: ScheduleDetailBinding(),
    ),
    GetPage(
      name: _Paths.TEAM_DETAIL,
      page: () => const TeamDetailView(),
      binding: TeamDetailBinding(),
    ),
    GetPage(
      name: _Paths.TEAM_EDIT,
      page: () => const TeamEditView(),
      binding: TeamEditBinding(),
    ),
    GetPage(
        name: _Paths.PROJECT_SUMMARY,
        page: () => const ProjectSummaryView(),
        transition: Transition.fadeIn,
        bindings: [
          ProjectSummaryBinding(),
          AppBottomNavBinding(),
          // AppDrawerBinding(),
        ]),
    GetPage(
      name: _Paths.PROJECT_ALL,
      page: () => const ProjectAllView(),
      binding: ProjectAllBinding(),
    ),
    GetPage(
      name: _Paths.PROJECT_DETAIL,
      page: () => const ProjectDetailView(),
      binding: ProjectDetailBinding(),
    ),
    GetPage(
      name: _Paths.PROJECT_CREATE,
      page: () => const ProjectCreateView(),
      binding: ProjectCreateBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_CREATE,
      page: () => const ScheduleCreateView(),
      binding: ScheduleCreateBinding(),
    ),
    GetPage(
        name: _Paths.CALENDAR,
        page: () => const CalendarView(),
        transition: Transition.fadeIn,
        bindings: [
          CalendarBinding(),
          AppBottomNavBinding(),
          // AppDrawerBinding(),
        ]),
    GetPage(
        name: _Paths.PROFILE,
        page: () => const ProfileView(),
        transition: Transition.fadeIn,
        bindings: [
          ProfileBinding(),
          AppBottomNavBinding(),
          // AppDrawerBinding(),
        ]),
    GetPage(
      name: _Paths.PROFILE_EDIT,
      page: () => const ProfileEditView(),
      binding: ProfileEditBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PREMIUM_PLAN,
      page: () => const ProfilePremiumPlanView(),
      binding: ProfilePremiumPlanBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTING,
      page: () => const ProfileSettingView(),
      binding: ProfileSettingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTING_CHANGE_PASSWORD,
      page: () => const ProfileSettingChangePasswordView(),
      binding: ProfileSettingChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.APP_DRAWER,
      page: () => const AppDrawerView(),
      binding: AppDrawerBinding(),
    ),
    GetPage(
      name: _Paths.APP_BOTTOM_NAV,
      page: () => const AppBottomNavView(),
      binding: AppBottomNavBinding(),
    ),
    GetPage(
      name: _Paths.TASK_CREATE,
      page: () => const TaskCreateView(),
      binding: TaskCreateBinding(),
    ),
  ];
}
